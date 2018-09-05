# attaching needed libraries
library(dplyr)
library(data.table)
library(tibble)

# defining the dataframe
#df <- cbind.data.frame(x = rnorm(10), y = rnorm(10))

# custom function to transpose while preserving names
transpose_df <- function(df) {
  t_df <- data.table::transpose(df)
  colnames(t_df) <- rownames(df)
  rownames(t_df) <- colnames(df)
  t_df <- t_df %>%
    tibble::rownames_to_column(df = .) %>%
    tibble::as_data_frame(x = .)
  return(t_df)
}

# using the function
#transpose_df(df)
#> # A tibble: 2 x 11
#>   rowname    `1`   `2`     `3`    `4`      `5`   `6`    `7`    `8`    `9`
#>   <chr>    <dbl> <dbl>   <dbl>  <dbl>    <dbl> <dbl>  <dbl>  <dbl>  <dbl>
#> 1 x       -1.38  0.752  1.22    0.296 -0.00298 1.50  -0.719 -0.503 -0.114
#> 2 y        0.618 0.304 -0.0559 -1.27   0.0806  0.156  0.522  0.677  0.532
#> # ... with 1 more variable: `10` <dbl>