\name{out.cm}
\alias{out.cm}
\title{Output a Community Matrix or Community Effect Matrix in Conventional Format}
\description{
Output a community matrix or community effect matrix object in convetional format to the console.
}
\usage{
out.cm(M)
}
\arguments{
 \item{M}{A matrix to be output.}
}
\details{
This function outputs a community matrix or community effect matrix object in convetional format to the console where matrix elements are formatted from "-1", "0", "1", and "\code{NA}" to "-", "0", "+", and "?" respectively.  This command does not validate the input matrix.
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
\code{\link{make.cm}}, \code{\link{make.cem}}.
}
\examples{
## out a community matrix
data(cem.levins)
out.cm(cem.levins)
}
\keyword{file}
