\name{make.clem}
\alias{make.clem}
\title{Compute the Change in Life Expectancy Matrix}
\description{
Validates a community matrix and computes its associated change in life expectancy matrix.}
\usage{
make.clem(CM, status=FALSE)
}
\arguments{
 \item{CM}{A valid community matrix.}
 \item{status}{Switches on an element-by-element progress indicator when set to \code{TRUE}. Set to \code{FALSE} by default.}
}
\details{
The supplied matrix is validated as a community matrix, and a table of predicted changes in life expectancy (i.e. the inverse of turnover) given a press perturbation is computed. Diagonal elements can differ for births and deaths, and these predictions, in that order, are separated by a comma.}
\value{
A change in life expectancy matrix
}
\references{
 Dambacher, J. M., R. Levins and P. A. Rossignol. (2005) Life expectancy change in perturbed communities: Derivation and qualitative analysis. \emph{Mathematical Biosciences} \bold{197},1--14. <\doi{10.1016/j.mbs.2005.06.001}>.
 
 Puccia, C. J. and Levins, R. (1986) \emph{Qualitative Modeling of Complex Systems: An Introduction to Loop Analysis and Time Averaging}. Cambridge: Harvard University Press. <\doi{10.4159/harvard.9780674435070}>.
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
i\code{\link{make.cm}},\code{\link{make.cem}}.
}
\examples{
## compute change in life expectancy matrix
data(cm.DLR)
make.clem(cm.DLR)
}
\keyword{graphs}
