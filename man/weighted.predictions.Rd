\name{weighted.predictions}
\alias{weighted.predictions}
\title{Compute the Matrix of Weighted Predictions}
\description{
Validates a community matrix and computes its associated weighted predictions matrix.}
\usage{
weighted.predictions(CM, status=FALSE)
}
\arguments{
 \item{CM}{A valid community matrix.}
 \item{status}{Switches on an element-by-element progress indicator when set to \code{TRUE}. Set to \code{FALSE} by default.}
}
\details{
The supplied matrix is validated as a community matrix, and a weighted predictions matrix is computed.  This matrix is equivalent to the transposed community effect matrix with some ambiguous elements resolved using the value of the corresponding feedback matrix. Such values are represented enclosed in parentheses. In keeping with the paper by Levins, Dambacher and Rossignol (expression 42 in the paper cited below), the matrix orientation is congruent with the weighted feedback matrix, and transposed to the community effect matrix.
}
\value{
The weighted prediction matrix for a community matrix
}
\references{
  Dambacher, J. M., R. Levins and P. A. Rossignol. (2005) Life expectancy change in perturbed communities: Derivation and qualitative analysis. \emph{Mathematical Biosciences} \bold{197},1-14
}
\author{
Alexis Dinno \url{http://www.doyenne.com/LoopAnalyst/}
}
\seealso{
\code{\link{make.cem}, \link{make.wfm}, \link{make.adjoint}, and \link{make.T}}.
}
\examples{
## compute community effect matrix, and note high prevalence of ambiguous predictions
data(cm.dambacher)
make.cem(cm.dambacher, out=TRUE)
## compute weighted prediction matrix, and note disambiguation of the cem
weighted.predictions(t(cm.dambacher))
}
\keyword{graphs}
