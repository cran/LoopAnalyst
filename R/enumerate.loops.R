# enumerate.loops returns a list of simple loops (cycles) in CM. It 
# takes as arguments:
# CM: a (-1, 0, 1) matrix
enumerate.loops <- function(CM) {

# is.loop tests that a list of visited elements begins at and 
# terminates in the jth parameter. It returns TRUE or FALSE and takes:
# LOVE: a list of visited elements
# j: a parameter that terminates a path from i to j, where i = j

	is.loop <- function() {
		if ( (LOVE[length(LOVE)] == LOVE[1]) & (length(LOVE) > 1) ) {
			return(TRUE)
			} else {
		 	return(FALSE)
		 	}
	 		
		# end is.loop()
		} 


# make.ENVY() returns a list of Elements Not Visted Yet (ENVY), excluding
# the first element from:
# CM: a valid Community Matrix
# Term: a valid Termination matrix
# LOVE: a list of visited elements within CM 
	make.ENVY <- function() {
		ENVY <- NULL
		for (z in 1:N) {
			if (!(identical((CM[LOVE[length(LOVE)],z]),0))) {
				if (identical(Term[LOVE[length(LOVE)],z],0)) {
					ENVY <- c(ENVY,z)
					}
				}
			}
		for (z in LOVE[-1]) {
			ENVY <- ENVY[ENVY != z]
			}

		return(ENVY)
				
		# end make.ENVY()	
		}

	# update.Term() clears rows in the termination matrix Term of any
	# parameters not in the List Of Visited Elements (LOVE). It
	# returns Term and takes:
	# Term: a valid Termination matrix
	# LOVE: a list of visited elements from the community matrix to 
	#       which Term is relevant
	update.Term <- function() {
		for (y in 1:N) {
			if (!(y %in% LOVE) ) {
				Term[y,c(1:N)] <<- 0
				}
			}

		Term[1:x-1,1:N] <<- 1
		Term[1:N,1:x-1] <<- 1
			
		return(Term)
			
		# end update.Term()
		}

	# add.LOVE.to.LOL adds the List Of Visited Elements (LOVE) to the
	# List Of Loops (LOL) and returns LOL. It takes:
	# LOVE: a list of visited elements
	# LOL: a list of paths
	add.LOVE.to.LOL <- function() {
		if (is.null(LOL)) {
			LOL <<- list(LOVE)
			} else {
		 	LOL <<- c(LOL,list(LOVE))
		 	}
		 	
		 return(LOL)
		 	
		 # end add.LOVE.to.LOL()
		 }

	# search.step is the main logic of the breadth-wide path search. It
	# returns a list of paths (LOL), and takes:
	# CM: a valid Community Matrix
	# Term: a valid Termination matrix
	# LOVE: a list of visited elements within CM
	# LOL: a list of paths within CM 
	search.step <- function() {
		
		ENVY <- make.ENVY()
		if (length(ENVY) == 0) {
			Term[LOVE[length(LOVE)-1],LOVE[length(LOVE)]] <<- 1
			LOVE <<- LOVE[-length(LOVE)]
		   Term <<- update.Term()

			# exit SearchStep if the last element of LOVE is i or if LOVE is empty 
			# and return List Of Loops (LOL)
			if (length(LOVE) == 0 ) {
				incomplete <<- FALSE
				}
			} else {

			# append the first element (breadthwise search) of ENVY to LOVE
 			LOVE <<- c(LOVE,ENVY[1])	

			# test whether new LOVE is a loop and respond accordingly
			if (is.loop() == TRUE) {
				LOL <<- add.LOVE.to.LOL()
				Term[LOVE[length(LOVE)-1],LOVE[length(LOVE)]] <<- 1
				LOVE <<- LOVE[-length(LOVE)]
				}
 			}
	
		# end search.step()
		}

#	validate.cm(CM)

	# Set N = rowsize of CM
	N <- nrow(CM)
	# initialize search termination matrix
	Term <- matrix(c(0),N,N)
   # initialize list of loop (LOL), and list of visited elements (LOVE)
   LOL <- NULL
  
	for (x in 1:(N-1)) {
		LOVE <- c(x)
		Term[1:x-1,1:N] <- 1
		Term[1:N,1:x-1] <- 1

		# find all loops starting at x
		incomplete <- TRUE
		while (incomplete) {
			search.step()
			}
		return(LOL)
		}

	if ( !identical(CM[N,N],0) ) {
		LOL <- c( LOL,list( c(N,N) ) )
		}

	return(LOL)
	
	# end enumerate.loops()
	}
