\name{make.cm}
\alias{make.cm}
\title{Interactively Make a Community Matrix}
\description{
Make and validate a new community matrix by soliciting the number of varibles, variable names and interactions between each.
}
\usage{
make.cm(n)
}
\arguments{
 \item{n}{an integer value denoting the number of component variables modeled by the community matrix. The minimum number of variables is 2.  If left unspecified, make.cm will prompt for the number of variables.}
}
\details{
make.cm prompts the user for the number of variables (if not specified as an option), variable names, and the qualitative signifier (-1, 0, or 1) of direct causal effect from and to each variable.
}
\value{
a labeled (-1,0,1) square matrix.
}
\references{
 Puccia, C. J. and Levins, R. (1986) \href{http://www.hup.harvard.edu/catalog.php?isbn=9780674435070}{\emph{Qualitative Modeling of Complex Systems: An Introduction to Loop Analysis and Time Averaging}}. Cambridge: Harvard University Press.
}
\author{
Alexis Dinno \url{https://www.alexisdinno.com/LoopAnalyst/}
}
\seealso{
\code{\link{out.cm}}, \code{\link{graph.cm}}, \code{\link{make.cem}}.
}
\examples{
## assign a community matrix
\dontrun{CM <- make.cm(4)}
}
\keyword{graphs}
