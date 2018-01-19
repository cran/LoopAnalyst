\name{enumerate.paths}
\alias{enumerate.paths}
\title{Enumerates all Paths from i to j in a Community Matrix}
\description{
Enumerates a list of all paths from variable i to variable j in a community matrix after first validating that \code{CM} is a community matrix.
}
\usage{
enumerate.paths(CM,i,j)
}
\arguments{
 \item{CM}{A community matrix.}
 \item{i,j}{variables in the community matrix \code{CM}. Variables may be specified by their names or numbers (i.e. the row/column number corresponding to a specific variable).}
}
\details{
The returned list of paths contains each path from i to j in \code{CM} in breadth-first search order).  Each element in a path is represented by its variable number.
}
\value{
A list of paths.
}
\references{
 Puccia, C. J. and Levins, R. (1986) \href{http://www.hup.harvard.edu/catalog.php?isbn=9780674435070}{\emph{Qualitative Modeling of Complex Systems: An Introduction to Loop Analysis and Time Averaging}}. Cambridge: Harvard University Press.
}
\author{
Alexis Dinno \url{https://www.alexisdinno.com/LoopAnalyst/}
}
\seealso{
\code{\link{make.cm}}.
}
\examples{
## assess community matrix
data(cm.levins)
enumerate.paths(cm.levins,2,4)
}
\keyword{graphs}
