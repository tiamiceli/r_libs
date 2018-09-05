gg_hist <- function(df, var, xmin=0, xmax=0, binwidth=NA, bins=30){
  df_var <- df[,var, with=F]
  
  if(xmin==xmax){
    xmin <- min(df_var[, 1], na.rm=TRUE)
    xmax <- max(df_var[, 1], na.rm=TRUE)
  }
  
  if(is.na(binwidth)){
    binwidth <- (xmax - xmin) / bins
  }
  
  xmin <- xmin - binwidth
  xmax <- xmax + binwidth
  
  entries <- nrow(df_var)
  
  num_NAs <- sum(is.na(df_var[, 1]))
  frac_NAs <- round(num_NAs * 100 / entries, 2)
  
  num_0s <- sum(df_var[, 1]==0, na.rm=T)
  frac_0s <- round(num_0s * 100 / entries, 2)
  
  num_overflow <- sum(df_var[, 1] > xmax, na.rm=T)
  num_underflow <- sum(df_var[, 1] < xmin, na.rm=T)
  
  plot <- ggplot(data=df) +
    geom_histogram(aes_string(x=var), binwidth=binwidth) +
    xlim(xmin, xmax) +
    labs(x=var) +
    annotate("text",
             x=0.6*xmax,
             y=Inf,
             hjust=0,
             vjust=1,
             label=paste0("\nentries = ", entries, "\n",
                          "NAs = ", num_NAs, "  ", frac_NAs, "%\n",
                          "0s = ", num_0s, "  ", frac_0s, "%\n",
                          "overflow = ", num_overflow, "\n",
                          "underflow = ", num_underflow)
    )
  return(plot)
}