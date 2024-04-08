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
\code{\link{out.cm}}, \code{\link{graph.cm}}, \code{\link{make.cem}}.
}
\examples{
## assign a community matrix
\dontrun{CM <- make.cm(4)}
}
\keyword{graphs}
