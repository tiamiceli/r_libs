quantize <- function(vec, bins, returnBounds=FALSE){ 
  bounds <- unname(quantile(vec, na.rm=TRUE, probs=seq(0, 1, 1/bins)))
  if(returnBounds)
  {
    returnVal <- bounds
  }
  else
  {
    returnVal <- findInterval(vec, bounds, rightmost.closed=TRUE)
  }
  
  
  return(returnVal)
}