% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fit_and_reporting.r
\name{umx_APA_pval}
\alias{umx_APA_pval}
\title{umx_APA_pval}
\usage{
umx_APA_pval(p, min = 0.001, digits = 3, addComparison = NA,
  rounding = NULL)
}
\arguments{
\item{p}{The p-value to round}

\item{min}{Values below min will be reported as "< min"}

\item{digits}{Number of decimals to which to round (default = 3)}

\item{addComparison}{Whether to add '=' '<' etc. (NA adds when needed)}

\item{rounding}{deprecated - please replace 'rounding' with 'digits'}
}
\value{
- p-value formatted in APA style
}
\description{
round a p value so you get < .001 instead of .000000002 or 1.00E-09
}
\examples{
umx_APA_pval(.052347)
umx_APA_pval(1.23E-3)
umx_APA_pval(1.23E-4)
umx_APA_pval(c(1.23E-3, .5))
umx_APA_pval(c(1.23E-3, .5), addComparison = TRUE)
}
\seealso{
- \code{\link{round}}

Other Reporting Functions: \code{\link{loadings.MxModel}},
  \code{\link{umxAPA}}, \code{\link{umxGetParameters}},
  \code{\link{umxSummary}}, \code{\link{umx_aggregate}},
  \code{\link{umx_print}}, \code{\link{umx_show}},
  \code{\link{umx_time}}, \code{\link{umx}}
}
