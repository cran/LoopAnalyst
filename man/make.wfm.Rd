\name{make.wfm}
\alias{make.wfm}
\title{Compute the Weighted Feedback Matrix}
\description{
Validates a community matrix and computes its associated weighted feedback matrix.}
\usage{
make.wfm(CM, status=FALSE, digits=1, sign=FALSE)
}
\arguments{
 \item{CM}{A valid community matrix.}
 \item{status}{Switches on an element-by-element progress indicator when set to \code{TRUE}. Set to \code{FALSE} by default.}
 \item{digits}{Indicates precision for elements in the weighted feedback matrix. By default, this is set to 1 significant digit.}
 \item{sign}{Switch to provide output as the signed value of the adjoint matrix elements divided by the absolute feedback matrix elements.  The default value is \code{FALSE}}
}
\details{
The supplied matrix is validated as a community matrix, and the weighted feedback matrix is computed.  Each element is equal to the absolute value of the corresponding element of the adjoint of the negative community matrix divided by the corresponding element of the total feedback matrix T.  Resulting values range from 0 to 1.0, with values of magnitude of 0.5 or greater indicating that positive or negative feedback is expected to dominate (as per the sign of the adjoint value).  Values of 1 indicate unambiguous effects of feedback, regardless of the quantitative magnitude of the system's linkages.  Unresolvably ambiguous effects are represented by values between 0 and 0.5. The \code{sign} implementation differs from Dambacher's.
\cr
NOTE: weighted feedback, adjoint and absolute feedback matrices are transposed relative to the community effect matrix.
}
\value{
The weighted feedback matrix for a community matrix
}
\references{
  Dambacher, J. M., et al. (2003) Qualitative stability and ambiguity in model ecosystems. \emph{The American Naturalist}, \bold{161(6)},876-888

  Dambacher, J. M. and Li, H. W. and Rossignol, P. A. (2002) Relevance of community structure in assessing indeterminacy of ecological predictions. \emph{Ecology}, \bold{83(5)},1372-1385}
\author{
Alexis Dinno \url{http://www.doyenne.com/LoopAnalyst/}
}
\seealso{
\code{\link{make.cem}, \link{make.adjoint}, \link{make.T}, \link{weighted.predictions}}.
}
\examples{
## compute weighted feedback matrix
data(cm.zavaleta)
make.wfm(cm.zavaleta)
}
\keyword{graphs}
