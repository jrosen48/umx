% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fit_and_reporting.r
\name{loadings.MxModel}
\alias{loadings.MxModel}
\title{loadings.MxModel}
\usage{
\method{loadings}{MxModel}(x, ...)
}
\arguments{
\item{x}{A RAM model to get which to get loadings}

\item{...}{Other parameters (currently unused)}
}
\value{
- loadings matrix
}
\description{
loadings extracts the factor loadings from an OpenMx EFA (factor analysis) model. 
It behaves equivalently to stats::loadings in returning the loadings from an 
EFA (factor analysis), but doesn't store the rotation matrix.
}
\examples{
myVars <- c("mpg", "disp", "hp", "wt", "qsec")
m1 = umxEFA(name = "test", factors = 2, data = mtcars[, myVars])
loadings(m1)
}
\references{
- \url{https://github.com/tbates/umx}, \url{https://tbates.github.io}
}
\seealso{
- \code{\link{factanal}}, \code{\link{loadings}}

Other Reporting Functions: \code{\link{umxAPA}},
  \code{\link{umxGetParameters}}, \code{\link{umxSummary}},
  \code{\link{umx_APA_pval}}, \code{\link{umx_aggregate}},
  \code{\link{umx_print}}, \code{\link{umx_show}},
  \code{\link{umx_time}}, \code{\link{umx}}
}
