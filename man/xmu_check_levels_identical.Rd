% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xmu.r
\name{xmu_check_levels_identical}
\alias{xmu_check_levels_identical}
\title{xmu_check_levels_identical}
\usage{
xmu_check_levels_identical(df, selDVs, sep, action = c("stop", "ignore"))
}
\arguments{
\item{df}{data.frame containing the data}

\item{selDVs}{base names of variables (without suffixes)}

\item{sep}{text-constant separating base variable names the twin index (1:2)}

\item{action}{if unequal levels found:  c("stop", "ignore")}
}
\value{
-
}
\description{
Just checks that the factor levels for twins 1 and 2 are the same
}
\examples{
require(umx)
data(twinData)
baseNames = c("bmi")
selDVs = umx_paste_names(baseNames, "", 1:2)
tmp = twinData[, selDVs]
tmp$bmi1[tmp$bmi1 <= 22] = 22
tmp$bmi2[tmp$bmi2 <= 22] = 22
xmu_check_levels_identical(umxFactor(tmp, sep = ""), selDVs = baseNames, sep = "")
\dontrun{
xmu_check_levels_identical(umxFactor(tmp), selDVs = baseNames, sep = "")
}
}
\seealso{
Other xmu internal not for end user: \code{\link{umxModel}},
  \code{\link{xmuHasSquareBrackets}},
  \code{\link{xmuLabel_MATRIX_Model}},
  \code{\link{xmuLabel_Matrix}},
  \code{\link{xmuLabel_RAM_Model}}, \code{\link{xmuMI}},
  \code{\link{xmuMakeDeviationThresholdsMatrices}},
  \code{\link{xmuMakeOneHeadedPathsFromPathList}},
  \code{\link{xmuMakeTwoHeadedPathsFromPathList}},
  \code{\link{xmuMaxLevels}}, \code{\link{xmuMinLevels}},
  \code{\link{xmuPropagateLabels}},
  \code{\link{xmu_dot_make_paths}},
  \code{\link{xmu_dot_make_residuals}},
  \code{\link{xmu_start_value_list}}
}
