\name{validate.cem}
\alias{validate.cem}
\title{Validate a Community Effect Matrix}
\description{
Validates a community effect matrix, returning descriptive errors if validation fails and no value otherwise.
}
\usage{
validate.cem(CEM)
}
\arguments{
 \item{CEM}{A potential community effect matrix to be tested.}
}
\details{
A community effect matrix is deemed valid if it is a square matrix, with no missing values, where each element has the value NA, -1, 0 or 1.
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
\code{\link{make.cem}}.
}
\examples{
## assess community effect matrix
data(cm.levins)
make.cem(cm.levins) -> cem.levins
validate.cem(cem.levins)
}
\keyword{graphs}
