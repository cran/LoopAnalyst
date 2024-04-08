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
 Puccia, C. J. and Levins, R. (1986) \emph{Qualitative Modeling of Complex Systems: An Introduction to Loop Analysis and Time Averaging}. Cambridge: Harvard University Press. <\doi{10.4159/harvard.9780674435070}>.
}
\author{
Alexis Dinno (\email{alexis.dinno@pdx.edu})

Please contact me with any questions, bug reports or suggestions for improvement.  Fixing bugs will be facilitated by sending along:
\tabular{rl}{
[1] \tab a copy of your relevant R data file (de-labeled or anonymized is fine),\cr
[2] \tab a copy of the command syntax used, and\cr
[3] \tab a copy of the exact output of the command.\cr
}
\url{https://alexisdinno.com/LoopAnalyst/}
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
