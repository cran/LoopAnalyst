\name{LoopAnalyst-package}
\alias{LoopAnalyst-package}
\alias{LoopAnalyst}
\docType{package}
\title{LoopAnalyst}
\description{Performs Levin's loop analysis of qualitatively-specified complex causal systems.}
\details{
Loop analysis makes qualitative predictions of variable change in a system of causally interdependent variables, where "qualitative" means direct causal relationships and indirect causal effects are coded as sign only (i.e. increases, decreases, non change, and ambiguous). This implementation includes output support for graphs in \code{.dot} file format for use with visualization software such as \code{graphviz} (<https://graphviz.org>). \code{LoopAnalyst} provides tools for the construction and output of community matrices (\code{make.cm}), computation and output of community effect matrices (\code{make.cem}), tables of correlations (\code{cem.corr}), adjoint (\code{make.adjoint}), absolute feedback (\code{feedback}), weighted feedback and weighted prediction matrices (\code{weighted.predictions}), change in life expectancy matrices (\code{make.clem}), and feedback, path and loop enumeration (\code{enumerate.paths} and \code{enumerate.loops}) tools.                                                                                
}
\author{
Alexis Dinno \email{alexis.dinno@pdx.edu}
}
\references{
 Dambacher, J. M. and Li, H. W. and Rossignol, P. A. (2002) Relevance of community structure in assessing indeterminacy of ecological predictions. \emph{Ecology}, \bold{83(5)},1372--1385. <\doi{10.2307/3071950}>.

 Dambacher, J. M., et al. (2003) Qualitative stability and ambiguity in model ecosystems. \emph{The American Naturalist}, \bold{161(6)},876--888. <\doi{10.1086/367590}>.

 Dambacher, J. M., R. Levins and P. A. Rossignol. (2005) Life expectancy change in perturbed communities: Derivation and qualitative analysis. \emph{Mathematical Biosciences} \bold{197},1--14. <\doi{10.1016/j.mbs.2005.06.001}>.

 Levins, R. (1974) Discussion Paper: The qualitative analysis of partially specified systems. \emph{Annals of the New York Academy of Sciences}, \bold{231(1)},123--138. <\doi{10.1111/j.1749-6632.1974.tb20562.x}>.

 Puccia, C. J. and Levins, R. (1986) \emph{Qualitative Modeling of Complex Systems: An Introduction to Loop Analysis and Time Averaging}. Cambridge: Harvard University Press. <\doi{10.4159/harvard.9780674435070}>.
}
\keyword{ graphs }                                                              
