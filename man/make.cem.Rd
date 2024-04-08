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
## compute community effect matrix
data(cm.levins)
make.cem(cm.levins)
}
\keyword{graphs}
