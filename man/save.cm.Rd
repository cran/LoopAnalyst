\name{save.cm}
\alias{save.cm}
\title{Save a Community Matrix}
\description{
Validates and saves a community matrix in compressed binary format.
}
\usage{
save.cm(CM, file)
}
\arguments{
 \item{CM}{A community matrix to be validated and saved.}
 \item{file}{a connection or a character string giving the
name of the file to save.}
}
\details{
This function uses \code{\link{validate.cm}} and \code{\link{save}} to store a communty matrix object.
}
\author{
Alexis Dinno \url{http://www.doyenne.com/LoopAnalyst/}
}
\seealso{
\code{\link{load}}.
}
\examples{
## save a community matrix
data(cm.levins)
save.cm(cm.levins, file="Model_1.cm")}
\keyword{file}
