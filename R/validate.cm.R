# validate.cm validates a community matrix by testing that it is
# square, has only elements of -1, 0 or 1, and has at least two
# parameters. It produces an error if the community matrix is 
# invalid by these tests, and returns nothing otherwise. It takes:
# CM: a potential community matrix
validate.cm <- function(CM) {

	# Is CM a matrix? a square matrix?
 	if (!(is.matrix(CM)) | !(identical( nrow(CM), ncol(CM) ) ) ) {
	 	stop("\nA Community Matrix must be a square matrix with elements \nof values of only 1, 0 and -1.")
	 	}

	# Is CM big enough?
	if (nrow(CM) == 1) {
	 	stop("\nA Community Matrix must have two or more parameters.")
	 	}

	# Does CM contain only values = 1, 0 or -1?
	for (i in 1:nrow(CM)) {
		for (j in 1:ncol(CM)) {
	 		if ( !( (CM[i,j] == 1) | (CM[i,j] == 0) | (CM[i,j] == -1) ) ) {
	 			stop("\nA Community Matrix must be a square matrix with elements \nof values of only 1, 0 and -1.")
	 			}
	 		}
	 	}

	# Is CM matrix is fully specified?
	if (!(0 %in% CM)) {
		stop("\nA fully connected Community Matrix is not analyzable via loop analysis.")
		}
		
	N <- nrow(CM)

	# Does a parameter have no parents or children?
	parameters <- NULL
	for (q in 1:N) {
		if (
		   (!(-1 %in% CM[1:N,q]) & 
		    !( 1 %in% CM[1:N,q]) ) || 
		   (!(-1 %in% CM[q,1:N]) & 
		    !( 1 %in% CM[q,1:N]) ) ) {
		    parameters <- c(parameters,q)
		    }
		}

	if (!identical(parameters,NULL)) {
		if (length(parameters)==1) {
			stop("\nParameter ", parameters ," is missing any parent or any child parameters!\n")
			} else {
	 		parameters <- paste(parameters)
		 	parameters <- c(parameters[1:length(parameters)-1],"and",parameters[length(parameters)])
			stop(cat("Parameters", parameters ,"are missing any parent or any child parameters!\n", sep = " "))
		 	}			
		}

	# end validate.cm
	}
