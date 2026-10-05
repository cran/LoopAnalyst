# supprint: a suppressable print() function
# It takes:
#   x: a print()able object
#   quote: logical, indicating whether or not strings should be printed with surrounding quotes.
# Date: September 28, 2026
# Author: Alexis Dinno with guidance from Duncan Murdoch of the R Core Team

supprint <- function(x, quote=FALSE) {
  message_verbosity <- getOption("rlib_message_verbosity", "")
  if (message_verbosity != "quiet")  
    print(x, quote=quote)
  else
    invisible(x)
  }