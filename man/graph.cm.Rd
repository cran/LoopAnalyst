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
  Puccia, C. J. and Levins, R. (1986) \emph{Qualitative Modeling of Complex Systems: An Introduction to Loop Analysis and Time Averaging}. Cambridge: Harvard University Press.

  Gansner, E., Koutsofios, E. and North, S. (2002) \emph{Drawing graphs with dot}. \url{http://www.graphviz.org}
}
\author{
Alexis Dinno \url{http://www.doyenne.com/LoopAnalyst/}
}
\seealso{
\code{\link{make.cm}}.
}
\examples{
## graph a community matrix
data(cm.levins)
graph.cm(cm.levins, file="levins.dot")

## graph a community matrix
data(cm.zavaleta)
graph.cm(cm.zavaleta, file="zavaleta.dot", color="color")
}
\keyword{file}
