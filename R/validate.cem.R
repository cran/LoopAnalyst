# validate.CEM: validates a community effect matrix by testing that it is
# square, has only elements of NA, -1, 0 or 1, and has at least two
# parameters. It produces an error if the community effect matrix is 
# invalid by these tests, and returns nothing otherwise.
# It takes:
#   CEM: a candidate community effect matrix
# Author: Alexis Dinno
# Date: September 28, 2026

validate.cem <- function(CEM) {

	# Is CEM a matrix? a square matrix?
 	if (!(is.matrix(CEM)) | nrow(CEM) != ncol(CEM) ) {
	 	rlang::abort("A Community Effect Matrix must be a square matrix with elements of values of only NA, 1, 0 and -1.")
	 	}

	# Is CEM big enough?
	if (nrow(CEM) == 1) {
	 	rlang::abort("A Community Effect Matrix must have two or more parameters.")
	 	}

	# Does CEM contain only values = 1, 0 or -1?
	for (i in 1:nrow(CEM)) {
		for (j in 1:ncol(CEM)) {
			if ( !is.na(CEM[i,j]) ) {
	 			if ( !( (CEM[i,j] == 1) | (CEM[i,j] == 0) | (CEM[i,j] == -1) ) ) {
	 				rlang::abort("A Community Effect Matrix must be a square matrix with elements of values of only NA, 1, 0 and -1.")
	 				}
	 			}
	 		}
	 	}

	# end validate.CEM
	}
