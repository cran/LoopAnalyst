# save.cm: validates and saves a Community Matrix
# It takes:
#   CM: a potential Community Matrix
#   file: a valid filename with path
# Author: Alexis Dinno
# Date: September 28, 2026

save.cm <- function(CM, file = rlang::abort("'file' must be specified")) {

	validate.cm(CM)
	save(CM, file = file, ascii = FALSE, compress = TRUE)
		
	# end Save.CM()
	}
