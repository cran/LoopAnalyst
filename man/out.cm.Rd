\name{out.cm}
\alias{out.cm}
\title{Output a Community Matrix or Community Effect Matrix in Conventional Format}
\description{
Output a community matrix or community effect matrix object in conventional format to the console.
}
\usage{
out.cm(M)
}
\arguments{
 \item{M}{A matrix to be output.}
}
\details{
This function outputs a community matrix or community effect matrix object in conventional format to the console where matrix elements are formatted from "-1", "0", "1", and "\code{NA}" to "-", "0", "+", and "?" respectively.  This command does not validate the input matrix.
}
\references{
 Puccia, C. J. and Levins, R. (1986) \emph{Qualitative Modeling of Complex Systems: An Introduction to Loop Analysis and Time Averaging}. Cambridge: Harvard University Press.
}
\author{
Alexis Dinno \url{http://www.doyenne.com/LoopAnalyst/}
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
