\name{make.cem}
\alias{make.cem}
\title{Compute the Community Effect Matrix}
\description{
Validates and community matrix and computes its associated community effect matrix.}
\usage{
make.cem(CM, status=FALSE, out=FALSE)
}
\arguments{
 \item{CM}{A valid community matrix.}
 \item{status}{Switches on an element-by-element progress indicator when set to \code{TRUE}. Set to \code{FALSE} by default.}
 \item{out}{Switches on formatting of community effect matrix element output from "-1", "0", "1", "\code{NA}" to "-", "0", "+", and "?" respectively when set to \code{TRUE}. Set to \code{FALSE} by default.}
}
\details{
The supplied matrix is validated as a community matrix, and the community effect matrix (i.e. table of predictions) is computed.  Ambiguous effects are represented by \code{link{NA}}.}
\value{
A community effect matrix
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
## compute community effect matrix
data(community.matrix)
make.cem(community.matrix)
}
\keyword{graphs}
