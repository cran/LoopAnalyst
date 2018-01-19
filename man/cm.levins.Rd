\name{cm.levins}
\docType{data}
\alias{cm.levins}
\title{Model of A Resource, An Herbivore, And Two Predators}
\description{
This dataset represents the causal relationships amongst the four variables defined by Levins' 1996 publication in figure 2, page 804.
}
\usage{data(cm.levins)}
\format{A 4 by 4 (-1, 0, 1) matrix with each element having at least one parent and at least one child.  The matrix is interpreted as the jth variable has the direct causal effect a[i,j] on variable i.}
\references{
 Levins, R. and Schultz, B. B. (1996) \href{http://www.jstor.org/stable/5678}{Effects of density dependence, feedback and environmental sensitivity on correlations among predators, prey and plant resources: Models and practical implications}. \emph{Journal of Animal Ecology}, \bold{65(6)},802-812.

 Puccia, C. J. and Levins, R. (1986) \href{http://www.hup.harvard.edu/catalog.php?isbn=9780674435070}{\emph{Qualitative Modeling of Complex Systems: An Introduction to Loop Analysis and Time Averaging}}. Cambridge: Harvard University Press.
}
\keyword{datasets}
