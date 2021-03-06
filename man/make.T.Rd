\name{make.T}
\alias{make.T}
\title{Compute the Absolute Feedback Matrix of a Community Matrix}
\description{
Validates a community matrix and computes its absolute feedback matrix.}
\usage{
make.T(CM, status=FALSE)
}
\arguments{
 \item{CM}{A valid community matrix.}
 \item{status}{Switches on an element-by-element progress indicator when set to \code{TRUE}. Set to \code{FALSE} by default.}
}
\details{
The supplied matrix is validated as a community matrix, and its absolute feedback matrix is computed.  The value of a given element indicates the total number of disjoint cycles spanning all varibles of the complementary subsystem for each path from j to i.  Values of a given element may be positive or zero, and bounds the magnitude of the associated adjoint matrix of the negative community matrix.
\cr
NOTE: weighted feedback, adjoint and absolute feeback matrices are transposed relative to the community effect matrix.
}
\value{
The absolute feedback matrix for a community matrix
}
\references{
 Dambacher, J. M. and Li, H. W. and Rossignol, P. A. (2002) \href{https://www.jstor.org/stable/3071950?seq=1#page_scan_tab_contents}{Relevance of community structure in assessing indeterminacy of ecological predictions}. \emph{Ecology}, \bold{83(5)},1372--1385.

 Dambacher, J. M., et al. (2003) \href{http://www.journals.uchicago.edu/doi/full/10.1086/367590}{Qualitative stability and ambiguity in model ecosystems}. \emph{The American Naturalist}, \bold{161(6)},876--888.
}
\author{
Alexis Dinno \url{https://www.alexisdinno.com/LoopAnalyst/}
}
\seealso{
\code{\link{make.cem}, \link{make.wfm}, \link{make.adjoint} and \link{weighted.predictions}}.
}
\examples{
## compute T for a community matrix
data(cm.dambacher)
make.T(cm.dambacher)
}
\keyword{graphs}
