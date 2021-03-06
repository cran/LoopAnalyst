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
 Dambacher, J. M. and Li, H. W. and Rossignol, P. A. (2002) \href{https://www.jstor.org/stable/3071950?seq=1#page_scan_tab_contents}{Relevance of community structure in assessing indeterminacy of ecological predictions}. \emph{Ecology}, \bold{83(5)},1372--1385.

 Dambacher, J. M., et al. (2003) \href{http://www.journals.uchicago.edu/doi/full/10.1086/367590}{Qualitative stability and ambiguity in model ecosystems}. \emph{The American Naturalist}, \bold{161(6)},876--888.
}
\author{
Alexis Dinno \url{https://www.alexisdinno.com/LoopAnalyst/}
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
