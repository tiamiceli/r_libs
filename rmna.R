sum.narm <- function(vec){ ifelse(length(as.vector(na.omit(vec)))==0,return(NA),return(sum(na.omit(vec))))}

max.narm <- function(vec){ ifelse(length(as.vector(na.omit(vec)))==0,return(NA),return(max(na.omit(vec))))}
min.narm <- function(vec){ ifelse(length(as.vector(na.omit(vec)))==0,return(NA),return(min(na.omit(vec))))}
median.narm <- function(vec){ ifelse(length(as.vector(na.omit(vec)))==0,return(NA),return(median(na.omit(vec))))}
mean.narm <- function(vec){ ifelse(length(as.vector(na.omit(vec)))==0,return(NA),return(mean(na.omit(vec))))}
weighted.mean.narm <- function(vec, vec2){ ifelse(length(as.vector(na.omit(vec)))+length(as.vector(na.omit(vec2)))==0,return(NA),return(weighted.mean(na.omit(vec),na.omit(vec2))))}
sd.narm <- function(vec){ ifelse(length(as.vector(na.omit(vec)))==0,return(NA),return(sd(na.omit(vec))))}