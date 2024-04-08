\name{graph.cem}
\alias{graph.cem}
\title{Graph a Community Effect Matrix}
\description{
Represents a community effect matrix as a graph in the dot language. This representation is sometimes termed a 'prediction scenario'.
}
\usage{
graph.cem(CEM, file, color="bw")
}
\arguments{
 \item{CEM}{a community effect matrix to be graphed.}
 \item{file}{a connection or a character string giving the name of the dot file (should have a .dot suffix).}
 \item{color}{select which color mode to graph the system: \code{bw}, \code{color}, or \code{greyscale}. Default \code{bw} is black and white.}
}
\details{This function outputs a dot file for use with \code{graphviz} or similar graph layout package to visually represent the community effect matrix system. The color options \code{color} and \code{greyscale} assist in graph readability when there are a large number of nodes and connections between them. Ambiguous effects are represented by dotted edges and tee-style arrowheads.
}
\section{comments}{The representation of loop analytic predictions in graph form is an emerging practice. Feedback and ideas are welcome, and I am amenable to implementing them in future versions of LoopAnalyst. \code{graph.cem} does not currently work with \code{weighted.predictions} output.
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
\code{\link{make.cem}}.
}
\examples{
## graph the community effect matrix of cm.levins 
data(cm.levins)
cem.levins <- make.cem(cm.levins) \dontshow{ currentdir <- getwd(); setwd(tempdir())}
graph.cem(cem.levins, file="levins.dot", color="color") \dontshow{ file.remove('levins.dot'); setwd(currentdir)}

## graph the community effect matrix of cm.dambacher 
data(cm.dambacher)
cem.dambacher <- make.cem(cm.dambacher) \dontshow{ currentdir <- getwd(); setwd(tempdir())}
graph.cem(cem.dambacher, file="dambacher.dot", color="color") \dontshow{ file.remove('dambacher.dot'); setwd(currentdir)}
}
\keyword{file}
