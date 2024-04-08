\name{feedback}
\alias{feedback}
\title{Feedback of a Partially Specified System}
\description{
Computes the qualitative feedback of a partially specified system; where \emph{qualitative} means direction: increases, decreases, no change, or ambiguous.
}
\usage{
feedback(C)
}
\arguments{
 \item{C}{A (-1, 0 1) square matrix.}
}
\details{
The supplied matrix is validated as a square (-1, 0, 1) matrix, and the sign-corrected product of system-spanning sets of disjunct loops is summed over all levels of feedback, and the result returned.  Ambiguous results are returned as \code{\link{NA}}.
}
\value{
-1, 0, 1, or \code{NA}
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
## compute the feedback of a system
data(submatrix)
feedback(submatrix)
}
\keyword{graphs}
