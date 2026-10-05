# supcat: a suppressable cat() function
# It takes:
#   x: a cat()able object
#   quote: logical, indicating whether or not strings should be printed with surrounding quotes.
# Date: September 28, 2026
# Author: Alexis Dinno with guidance from Duncan Murdoch of the R Core Team

supcat <- function(x, sep=" ") {
  message_verbosity <- getOption("rlib_message_verbosity", "")
  if (message_verbosity != "quiet")  
    cat(x, sep=sep)
  else
    invisible(x)
  }