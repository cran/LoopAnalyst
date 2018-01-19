\name{validate.cm}
\alias{validate.cm}
\title{Validate a Community Matrix}
\description{
Validates a community matrix, returning descriptive errors if validation fails and nothing otherwise.
}
\usage{
validate.cm(CM)
}
\arguments{
 \item{CM}{A potential community matrix to be tested.}
}
\details{
A community matrix is deemed valid if it is a square matrix, with no missing values, where each element has the value -1, 0 or 1, it is not a fully specified matrix, and there is at least one direct or indirect path from each element to each element.
}
\references{
 Puccia, C. J. and Levins, R. (1986) \href{http://www.hup.harvard.edu/catalog.php?isbn=9780674435070}{\emph{Qualitative Modeling of Complex Systems: An Introduction to Loop Analysis and Time Averaging}}. Cambridge: Harvard University Press.
}
\author{
Alexis Dinno \url{https://www.alexisdinno.com/LoopAnalyst/}
}
\seealso{
\code{\link{make.cm}}.
}
\examples{
## assess community matrix
data(cm.levins)
validate.cm(cm.levins)
}
\keyword{graphs}
