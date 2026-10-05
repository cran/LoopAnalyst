# make.cm: interactively solicits variable names and linakges between
# variables to produce a community matrix
# It takes:
#   N: integer number of variables in the community matrix
# Author: Alexis Dinno
# Date: September 29, 2026

make.cm <- function(n=NA) {

	N <- n
	
	while (!is.numeric(N) || !identical(floor(N),N) || N < 2) {
		N <- readline("Please specify how many parameters are in the system represented by the \ncommunity matrix by typing an integer greater than or equal to two (or type \n\"q\" to quit): ")
		if (N == "q" || N == "Q") {
			return(rlang::inform())
			}
		N <- as.numeric(N)
		if (N > 12) {
			rlang::warn("make.cem may take a very long time to compute community matrices larger than 12 parameters.")
			}
		}

 	CommunityMatrix <- matrix(0,N,N,dimnames = list(c(letters[1:N]), c(letters[1:N])))

	yes.name <- readline("Would you like to name your parameters? [y/n]\nThe default is lettered names a, b, c, etc.\n(Short names of a few characters will output best.)")
	
	if ( identical(substr(yes.name,1,1),"y") || identical(substr(yes.name,1,1),"Y") ) {
		for (x in 1:N) {
			name <- readline(sprintf("What is parameter %i\'s name? ", x))
			rownames(CommunityMatrix)[x] <- name
			colnames(CommunityMatrix)[x] <- name
			}
		}
	rlang::inform()

	# input qualitative causal relationships between each parameter
	for (i in 1:N) {
		for (j in 1:N) {
			i <- as.integer(i)
			j <- as.integer(j)
			while (N) {
				Nij <- readline(sprintf("Relation from %s to %s (\"q\" to quit): ", rownames(CommunityMatrix)[j], rownames(CommunityMatrix)[i]))
				if (identical(Nij,"1") || identical(Nij,"+")) {
					CommunityMatrix[i,j] <- 1
					break
					}
				if (identical(Nij,"-1") || identical(Nij,"-")) {
					CommunityMatrix[i,j] <- -1
					break
					}
				if (identical(Nij,"0") || identical(Nij," ") || identical(Nij,"")) {
						CommunityMatrix[i,j] <- 0
					break
					}
				if (Nij == "q" || Nij == "Q") {
					return(rlang::inform())
					}
				# alert if input isn't in accepted form, and rerequest
				if ( !(Nij %in% c("1","-1","0","+","-",""," ") ) ) {
					rlang::inform(sprintf("Relation from %s to %s: must be:\n increasing:  1, or +\n no relation: 0, <space> or <return>\n decreasing:  -1, or -", letters[i], letters[as.integer(j)]))
					}
				}
			}
		}

	# alert if matrix is fully specified.
	if (!(0 %in% CommunityMatrix)) {
		rlang::abort("A fully connected Community Matrix is not analyzable via loop analysis.")
		}
		
	# alert if a paramter has no parents or children, and contract system.
	cmcollapse <- function(CM) {
		for (x in 1:N) {
			if (
			   (!(-1 %in% CM[1:N,x]) & 
			    !( 1 %in% CM[1:N,x]) ) || 
			   (!(-1 %in% CM[x,1:N]) & 
			    !( 1 %in% CM[x,1:N]) ) ) {
				CM <- CM[-x,-x]
				rlang::warn(sprintf("Parameter %i has no parent or child parameters and has been removed from the Community Matrix.", x))
				N <<- N - 1
				if (identical(as.integer(N), as.integer(1))) {
					rlang::abort("The system is too small after removing childless/parentless parameters!")
					}
				cmcollapse(CM)
				}
			}

		return(CM)

		# end cmcollapse()
		}

	CommunityMatrix <- cmcollapse(CommunityMatrix)
	
return(CommunityMatrix)

}
