\name{cm.DLR}
\docType{data}
\alias{cm.DLR}
\title{Model of Two Mosquito Life Stages With Predation and Biocontrol}
\description{
This dataset represents the causal relationships amongst the four variables defined by Dambacher et al. in their 2005 publication in figure 2, page 10.
}
\usage{data(cm.DLR)}
\format{A 4 by 4 (-1, 0, 1) matrix with each element having at least one parent and at least one child.  The matrix is interpreted as the jth variable has the direct causal effect a[i,j] on variable i.}
\references{
 Dambacher, J. M., R. Levins and P. A. Rossignol. (2005) \href{https://doi.org/10.1016/j.mbs.2005.06.001}{Life expectancy change in perturbed communities: Derivation and qualitative analysis}. \emph{Mathematical Biosciences} \bold{197},1--14.
}
\keyword{datasets}
