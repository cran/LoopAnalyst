\name{graph.cm}
\alias{graph.cm}
\title{Graph a Community Matrix}
\description{
Represents a community matrix as a signed digraph in the dot language.
}
\usage{
graph.cm(CM, file, color="bw")
}
\arguments{
 \item{CM}{a community matrix to be graphed.}
 \item{file}{a connection or a character string giving the name of the dot file (should have a .dot suffix).}
 \item{color}{select which color mode to graph the system: \code{bw}, \code{color}, or \code{greyscale}. Default \code{bw} is black and white.}
}
\details{This function outputs a dot file for use with \code{graphviz} or similar graph layout package to visually represent the community matrix system. The color options \code{color} and \code{greyscale} assist in graph readability when there are a large number of nodes and connections between them.
}
\references{
 Gansner, E., Koutsofios, E. and North, S. (2002) \href{https://www.graphviz.org/pdf/dotguide.pdf}{\emph{Drawing graphs with dot}}. \url{https://www.graphviz.org}

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
\code{\link{make.cm}}.
}
\examples{
## graph a community matrix
data(cm.levins) \dontshow{ currentdir <- getwd(); setwd(tempdir())}
graph.cm(cm.levins, file="levins.dot") \dontshow{ file.remove('levins.dot'); setwd(currentdir)}

## graph a community matrix
data(cm.dambacher) \dontshow{ currentdir <- getwd(); setwd(tempdir())}
graph.cm(cm.dambacher, file="dambacher.dot", color="color") \dontshow{ file.remove('dambacher.dot'); setwd(currentdir)}
}
\keyword{file}
