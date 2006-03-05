\name{enumerate.loops}
\alias{enumerate.loops}
\title{Enumerates all Loops in a (-1, 0, 1) Matrix}
\description{
Enumerates a list of all loops in a (-1, 0, 1) matrix.
}
\usage{
enumerate.loops(CM)
}
\arguments{
 \item{CM}{A (-1, 0 1) matrix.}
}
\details{
The returned list of loops contains each loop in \code{CM} in breadth-first search order).  Each element in a loop is represented by its variable number, and the first element also terminates each loop.
}
\value{
A list of loops.
}
\references{
 Puccia, C. J. and Levins, R. (1986) \emph{Qualitative Modeling of Complex Systems: An Introduction to Loop Analysis and Time Averaging}. Cambridge: Harvard University Press.
}
\author{
Alexis Dinno \url{http://www.doyenne.com/LoopAnalyst/}
}
\seealso{
\code{\link{make.cm}}.
}
\examples{
## assess community matrix
data(submatrix)
enumerate.loops(submatrix)
}
\keyword{graphs}
