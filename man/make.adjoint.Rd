\name{make.adjoint}
\alias{make.adjoint}
\title{Compute the Adjoint of the Negative Community Matrix}
\description{
Validates a community matrix and computes the adjoint matrix of it's negative.}
\usage{
make.adjoint(CM, status=FALSE)
}
\arguments{
 \item{CM}{A valid community matrix.}
 \item{status}{Switches on an element-by-element progress indicator when set to \code{TRUE}.  Set to \code{FALSE} by default.}
}
\details{
The supplied matrix is validated as a community matrix, and the adjoint matrix of the community matrix's negative is computed.  The value of a given element indicates the sum of feedback at all levels, under the assumption that, in the absence of relative specification of community matrix linkages, each level of feedback ought to account for the same proportion of total feedback contributing to the effect on \code{j} of a press perturbation on \code{i}.  Values of a given element may be positive, zero or negative integer values, but of a magnitude no larger than the corresponding value in the absolute feedback matrix T.
\cr
NOTE: weighted feedback, adjoint and absolute feeback matrices are transposed relative to the community effect matrix.
}
\value{
The adjoint matrix of a negative community matrix
}
\references{
  Dambacher, J. M., et al. (2003) Qualitative stability and ambiguity in model ecosystems. \emph{The American Naturalist}, \bold{161(6)},876--888

  Dambacher, J. M. and Li, H. W. and Rossignol, P. A. (2002) Relevance of community structure in assessing indeterminacy of ecological predictions. \emph{Ecology}, \bold{83(5)},1372--1385}
\author{
Alexis Dinno \url{http://www.doyenne.com/LoopAnalyst/}
}
\seealso{
\code{\link{make.cem}, \link{make.wfm}, \link{make.T}, and \link{weighted.predictions}}.
}
\examples{
## compute adjoint of a negative of a community matrix
data(community.matrix)
make.adjoint(community.matrix)
}
\keyword{graphs}
