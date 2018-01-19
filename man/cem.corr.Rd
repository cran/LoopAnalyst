\name{cem.corr}
\alias{cem.corr}
\title{Compute the Tables of Correlations for a Community Effect matrix}
\description{
Validates a community effect matrix and computes its associated tables of correlations.}
\usage{
cem.corr(CEM)
}
\arguments{
 \item{CEM}{A valid community effect matrix.}
}
\details{
The supplied matrix is validated as a community effect matrix, and the table of predicted correlations is computed.  Output is formatted as per Puccia and Levins, 1986 (see page 57) and correlations are represented as "-", "0", "+", and "?" for negative correlation, no correlation, positive correlation,and ambiguous correlation, respectively.}
\references{
 Puccia, C. J. and Levins, R. (1986) \href{http://www.hup.harvard.edu/catalog.php?isbn=9780674435070}{\emph{Qualitative Modeling of Complex Systems: An Introduction to Loop Analysis and Time Averaging}}. Cambridge: Harvard University Press. pp 55-59.
}
\author{
Alexis Dinno \url{https://www.alexisdinno.com/LoopAnalyst/}
}
\seealso{
\code{\link{make.cem}}.
}
\examples{
## compute tables of correlations
data(cm.levins)
cem <- make.cem(cm.levins)
cem.corr(cem)
}
\keyword{graphs}
