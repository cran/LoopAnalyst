# graph.cm produces a file in the dot language representing a 
# Community Matrix. It takes as it's arguments:
# CM: a Community Matrix (i.e. a signed digraph)
# file: a valid filename with path

graph.cm <- function(CM, file = stop("'file' must be specified")) {

# validate.cm.names takes a Community Matrix (CM) and returns a vector 
# CM.Name.Val(a,b) where a has one of the values:
# 1 if all rownames are null
# 2 if all rownames are not null, but some equal ""
# 3 if all rownames are not null and all rownames do not equal ""

# and b has one of the values:
# 1 if all colnames are null
# 2 if all colnames are not null, but some equal "" or equal NA
# 3 if all colnames are not null and all rownames do not equal ""

	validate.cm.names <- function(CM) {

		if (identical(rownames(CM),NULL)) {
			CM.Name.Val <- c(1)
			}
		if ("" %in% rownames(CM) | NA %in% rownames(CM)) {
			CM.Name.Val <- c(2)
			} else {
			CM.Name.Val <- c(3)
			}

		if (identical(colnames(CM),NULL)) {
			CM.Name.Val <- c(CM.Name.Val,1)
			}
		if ("" %in% colnames(CM) | NA %in% colnames(CM)) {
			CM.Name.Val <- c(CM.Name.Val,2)
			} else {
			CM.Name.Val <- c(CM.Name.Val,3)
			}
		
		# warn if rownames andcolnames are both valid, but are different
		if (identical(CM.Name.Val[1],3) & 
		    identical(CM.Name.Val[2],3) & 
		    !identical(rownames(CM),colnames(CM)) 
		   ) {
		   	warning("\nParameter names are different for rows and columns!\nUsing row names for parameter names.")
	   		}
		
		return(CM.Name.Val)
	
		#end validate.cm.names
		}

	validate.cm(CM)

	N <<- nrow(CM)
	
	CM.Name.Val <- validate.cm.names(CM)
	
	if ( !identical(CM.Name.Val[1],3) & !identical(CM.Name.Val[2],3) ) {
	   	sink(file = file)
		file.CM <- cat("digraph G {\n", "size = \"18,18\";\n")
		for (i in 1:N) {
			file.CM <- cat(" P", i, " [shape = circle];\n", sep = "")
			for (j in 1:N) {
				if (CM[i,j] != 0) {
					file.CM <- cat(file.CM, " P", i, " -> P", j, sep = "")
					if (CM[i,j] == -1) {
						file.CM <- cat(file.CM, "[arrowhead=odot]", sep = "")
						}
					file.CM <- cat(file.CM, ";\n", sep = "")
					}
				}
			}
		file.CM <- cat(file.CM, "}", sep = "")
		unlink(file)
		sink()
		}

	if (identical(CM.Name.Val[1],3) | identical(CM.Name.Val[2],3)) {
		if (identical(CM.Name.Val[1],3)) {
			Parameters <- rownames(CM)
			} else {
		 	Parameters <- colnames(CM)
		 	}
		 	
	   	sink(file = file)
		file.CM <- cat("digraph G {\n", "size = \"18,18\";\n")
		for (i in 1:N) {
			file.CM <- cat(Parameters[i], " [shape = circle];\n", sep = "")
			for (j in 1:N) {
				if (CM[i,j] != 0) {
					file.CM <- cat(file.CM, Parameters[i], " -> ", Parameters[j], sep = "")
					if (CM[i,j] == -1) {
						file.CM <- cat(file.CM, " [arrowhead=odot]", sep = "")
						}
					file.CM <- cat(file.CM, ";\n", sep = "")
					}
				}
			}
		file.CM <- cat(file.CM, "}", sep = "")
		unlink(file)
		sink()
		}
		
	# end graph.cm
	}
