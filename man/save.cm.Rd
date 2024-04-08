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
\code{\link{load}}.
}
\examples{
## save a community matrix
data(cm.levins) \dontshow{ currentdir <- getwd(); setwd(tempdir())}
save.cm(cm.levins, file="Model_1.cm") \dontshow{ file.remove('Model_1.cm'); setwd(currentdir)}
}
\keyword{file}
