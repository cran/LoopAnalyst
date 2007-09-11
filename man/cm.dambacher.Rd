\name{cm.dambacher}
\docType{data}
\alias{cm.dambacher}
\title{A Ten-Variable Trophic Model Of Danish Shallow Lakes}
\description{
This dataset represents the causal relationships amongst the ten variables defined by iDambacher's 2002 in figure 6, page 1381.
}
\usage{data(cm.dambacher)}
\format{A 10 by 10 (-1, 0, 1) matrix with each element having at least one parent and at least one child.  The matrix is interpreted as the jth variable has the direct causal effect a[i,j] on variable i.}
\references{
  Puccia, C. J. and Levins, R. (1986) \emph{Qualitative Modeling of Complex Systems: An Introduction to Loop Analysis and Time Averaging}. Cambridge: Harvard University Press.

Dambacher, J. M., Li, H. M., and Rossignol, P. A. (2002) Relevance of community structure in assessing indeterminacy of ecological predictions. \emph{Ecology}, \bold{83(5)},1372-1385
}
\keyword{datasets}