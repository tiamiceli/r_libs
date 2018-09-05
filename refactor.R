refactor <- function(old_factors, new_order){
  new_factors <- factor(old_factors, levels = new_order)
  return(new_factors)
}