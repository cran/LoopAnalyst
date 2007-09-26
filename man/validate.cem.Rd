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
 Puccia, C. J. and Levins, R. (1986) \emph{Qualitative Modeling of Complex Systems: An Introduction to Loop Analysis and Time Averaging}. Cambridge: Harvard University Press.
}
\author{
Alexis Dinno \url{http://www.doyenne.com/LoopAnalyst/}
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
