\name{validate.cm}
\alias{validate.cm}
\title{Validate a Community Matrix}
\description{
Validates a community matrix, returning descriptive errors if validation fails and a value of TRUE otherwise.
}
\usage{
validate.cm(CM)
}
\arguments{
 \item{CM}{A potential community matrix to be tested.}
}
\details{
A community matrix is deemed valid if it is a square matrix, with no missing values, where each element has the value -1, 0 or 1, and each element has at least one parent and one child variable.
}
\value{
TRUE.
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
## assess community matrix
data(community.matrix)
validate.cm(community.matrix)
}
\keyword{graphs}
