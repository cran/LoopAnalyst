\name{enumerate.paths}
\alias{enumerate.paths}
\title{Enumerates all Paths from i to j in a Community Matrix}
\description{
Enumerates a list of all paths from parameter i to parameter j in a community matrix after first validating that \code{CM} is a community matrix.
}
\usage{
enumerate.paths(CM,i,j)
}
\arguments{
 \item{CM}{A community matrix.}
 \item{i,j}{parameters in the community matrix \code{CM}. Parameters may be specified by their names or their parameter number (i.e. the row/column number corresponding to a specific parameter).}
}
\details{
The returned list of paths contains each path from i to j in \code{CM} in breadth-first search order).  Each element in a path is represented by its parameter number.
}
\value{
A list of paths.
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
data(community.matrix)
enumerate.paths(community.matrix,2,5)
}
\keyword{graphs}
