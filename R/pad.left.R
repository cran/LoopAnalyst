# pad.right: Returns s padded with spaces to the right so that the string
#   is exactly width wide.
# It takes:
#   s: a string 
#   width: a positive integer
# Author: Alexis Dinno
# Date: Sep 28, 2026
pad.left <- function(s, width) {
  len.s <- nchar(s)
  if (len.s < width) {
    s <- paste0(paste0(rep(" ", width - len.s),collapse=""), s)
    }
  return(s)
  }
