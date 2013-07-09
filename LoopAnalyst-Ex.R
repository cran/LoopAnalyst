pkgname <- "LoopAnalyst"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('LoopAnalyst')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("cem.corr")
### * cem.corr

flush(stderr()); flush(stdout())

### Name: cem.corr
### Title: Compute the Tables of Correlations for a Community Effect matrix
### Aliases: cem.corr
### Keywords: graphs

### ** Examples

## compute tables of correlations
data(cm.levins)
cem <- make.cem(cm.levins)
cem.corr(cem)



cleanEx()
nameEx("enumerate.loops")
### * enumerate.loops

flush(stderr()); flush(stdout())

### Name: enumerate.loops
### Title: Enumerates all Loops in a (-1, 0, 1) Matrix
### Aliases: enumerate.loops
### Keywords: graphs

### ** Examples

## assess community matrix
data(submatrix)
enumerate.loops(submatrix)



cleanEx()
nameEx("enumerate.paths")
### * enumerate.paths

flush(stderr()); flush(stdout())

### Name: enumerate.paths
### Title: Enumerates all Paths from i to j in a Community Matrix
### Aliases: enumerate.paths
### Keywords: graphs

### ** Examples

## assess community matrix
data(cm.levins)
enumerate.paths(cm.levins,2,4)



cleanEx()
nameEx("feedback")
### * feedback

flush(stderr()); flush(stdout())

### Name: feedback
### Title: Feedback of a Partially Specified System
### Aliases: feedback
### Keywords: graphs

### ** Examples

## compute the feedback of a system
data(submatrix)
feedback(submatrix)



cleanEx()
nameEx("graph.cem")
### * graph.cem

flush(stderr()); flush(stdout())

### Name: graph.cem
### Title: Graph a Community Effect Matrix
### Aliases: graph.cem
### Keywords: file

### ** Examples

## graph a community effect matrix
data(cm.levins)
make.cem(cm.levins) -> cem.levins
graph.cem(cem.levins, file="levins.dot", color="color")

## graph a community effect matrix
data(cm.zavaleta)
make.cem(cm.zavaleta) -> cem.zavaleta
graph.cem(cem.zavaleta, file="zavaleta.dot", color="color")



cleanEx()
nameEx("graph.cm")
### * graph.cm

flush(stderr()); flush(stdout())

### Name: graph.cm
### Title: Graph a Community Matrix
### Aliases: graph.cm
### Keywords: file

### ** Examples

## graph a community matrix
data(cm.levins)
graph.cm(cm.levins, file="levins.dot")

## graph a community matrix
data(cm.zavaleta)
graph.cm(cm.zavaleta, file="zavaleta.dot", color="color")



cleanEx()
nameEx("make.T")
### * make.T

flush(stderr()); flush(stdout())

### Name: make.T
### Title: Compute the Absolute Feedback Matrix of a Community Matrix
### Aliases: make.T
### Keywords: graphs

### ** Examples

## compute T for a community matrix
data(cm.zavaleta)
make.T(cm.zavaleta)



cleanEx()
nameEx("make.adjoint")
### * make.adjoint

flush(stderr()); flush(stdout())

### Name: make.adjoint
### Title: Compute the Adjoint of the Negative Community Matrix
### Aliases: make.adjoint
### Keywords: graphs

### ** Examples

## compute adjoint of a negative of a community matrix
data(cm.zavaleta)
make.adjoint(cm.zavaleta)



cleanEx()
nameEx("make.cem")
### * make.cem

flush(stderr()); flush(stdout())

### Name: make.cem
### Title: Compute the Community Effect Matrix
### Aliases: make.cem
### Keywords: graphs

### ** Examples

## compute community effect matrix
data(cm.levins)
make.cem(cm.levins)



cleanEx()
nameEx("make.clem")
### * make.clem

flush(stderr()); flush(stdout())

### Name: make.clem
### Title: Compute the Change in Life Expectancy Matrix
### Aliases: make.clem
### Keywords: graphs

### ** Examples

## compute change in life expectancy matrix
data(cm.DLR)
make.clem(cm.DLR)



cleanEx()
nameEx("make.cm")
### * make.cm

flush(stderr()); flush(stdout())

### Name: make.cm
### Title: Interactively Make a Community Matrix
### Aliases: make.cm
### Keywords: graphs

### ** Examples

## assign a community matrix
## Not run: CM <- make.cm(4)



cleanEx()
nameEx("make.wfm")
### * make.wfm

flush(stderr()); flush(stdout())

### Name: make.wfm
### Title: Compute the Weighted Feedback Matrix
### Aliases: make.wfm
### Keywords: graphs

### ** Examples

## compute weighted feedback matrix
data(cm.zavaleta)
make.wfm(cm.zavaleta)



cleanEx()
nameEx("out.cm")
### * out.cm

flush(stderr()); flush(stdout())

### Name: out.cm
### Title: Output a Community Matrix or Community Effect Matrix in
###   Conventional Format
### Aliases: out.cm
### Keywords: file

### ** Examples

## out a community matrix
data(cem.levins)
out.cm(cem.levins)



cleanEx()
nameEx("save.cm")
### * save.cm

flush(stderr()); flush(stdout())

### Name: save.cm
### Title: Save a Community Matrix
### Aliases: save.cm
### Keywords: file

### ** Examples

## save a community matrix
data(cm.levins)
save.cm(cm.levins, file="Model_1.cm")


cleanEx()
nameEx("validate.cem")
### * validate.cem

flush(stderr()); flush(stdout())

### Name: validate.cem
### Title: Validate a Community Effect Matrix
### Aliases: validate.cem
### Keywords: graphs

### ** Examples

## assess community effect matrix
data(cm.levins)
make.cem(cm.levins) -> cem.levins
validate.cem(cem.levins)



cleanEx()
nameEx("validate.cm")
### * validate.cm

flush(stderr()); flush(stdout())

### Name: validate.cm
### Title: Validate a Community Matrix
### Aliases: validate.cm
### Keywords: graphs

### ** Examples

## assess community matrix
data(cm.levins)
validate.cm(cm.levins)



cleanEx()
nameEx("weighted.predictions")
### * weighted.predictions

flush(stderr()); flush(stdout())

### Name: weighted.predictions
### Title: Compute the Matrix of Weighted Predictions
### Aliases: weighted.predictions
### Keywords: graphs

### ** Examples

## compute community effect matrix, and note high prevalence of ambiguous predictions
data(cm.zavaleta)
make.cem(cm.zavaleta, out=TRUE)
## compute weighted prediction matrix, and note disambiguation of part of the cem
weighted.predictions(t(cm.zavaleta))



### * <FOOTER>
###
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
