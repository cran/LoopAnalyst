# cem.corr() produces perturbation correlation tables from a community effect
# matrix. It takes:
# CEM: a community effect matrix
# Author: Alexis Dinno
# Date: September 28, 2026


# check for version compatibility and notify user of version incompatibility
# and let them know i am amenable to making back-compatible revisions.
cem.corr <- function(CEM) {


# out.cem.corr prints the correlation matrices using the format described in
# Puccia and Levins. It takes:
# M: a list of length N of correclation matrices of size N.

	out.cem.corr <- function(M) {

		N <- length(M)
		for (corr in 1:N) {
			for (i in 1:N) {
				for (j in 1:N) {
					if (is.na(M[[corr]][i,j])) {
						M[[corr]][i,j] <- "?"
						}
					if (M[[corr]][i,j] == 1) {
						M[[corr]][i,j] <- "+"
						}
					if (M[[corr]][i,j] == -1) {
						M[[corr]][i,j] <- "-"
						}
					if (!(j >= i)) {
						M[[corr]][i,j] <- " "
						}
					if ((i == j) & (M[[corr]][i,j] != "0")) {
						M[[corr]][i,j] <- 1
						}
					}
				}
   rlang::inform(message=paste0("\nInput to:", parameter.names[corr],"\n"))
			supprint(M[[corr]], quote=FALSE)
			}
	
		# end out.cem.corr()
		}

	N <- nrow(CEM)
	parameter.names <- rownames(CEM)

# validate that the supplied matrix is a community effect matrix in several
# steps

	# validate that the matrix is square
	if (N != ncol(CEM)) {
	 not.square.matrix.error.message <- "Supplied matrix is not square; community effect matrix expected!"
		rlang::abort(not.square.matrix.error.message)
		}

	# validate that the matrix contains elements that are one of 1, 0, -1 or NA
	for (i in 1:N) {
		for (j in 1:N) {
			a.ij <- CEM[i,j]
			if ( !( (1 == abs(a.ij)) | (0 == a.ij) | (is.na(a.ij)) ) ) {
			 invalid.element.error.message <- "Supplied matrix has at least one invalid element (i.e. not 1, 0, -1 or NA); community effect matrix expected!"
			 rlang::abort(invalid.element.error.message)
				}
			}
		}
 

# Pith of cemcorr


	# create set of matrices	
	CorrelationMatrices <- rep(list(matrix(c(NA),N,N,dimnames=list(parameter.names,parameter.names))),N)
	for (corr in 1:N) {
		# populate upper diagonal
		for (i in 1:N) {
			for (j in 1:N) {
				if (j >= i) {
					CorrelationMatrices[[corr]][i,j] <- CEM[corr,i]*CEM[corr,j]
					}
				}
			}
		}


	return(out.cem.corr(CorrelationMatrices))
	}
