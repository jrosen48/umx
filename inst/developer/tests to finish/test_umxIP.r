# library(testthat)
# library(umx)
# test_file("~/bin/umx.twin/inst/tests/test_umx_IP.r") 
# 
# test_package("umx")
require(OpenMx)
data(twinData)
twinData$ZYG = factor(twinData$zyg, levels = 1:5, labels = c("MZFF", "MZMM", "DZFF", "DZMM", "DZOS"))
selDVs = c("ht1", "wt1", "ht2", "wt2")
mzData <- subset(twinData, ZYG == "MZFF", selDVs)
dzData <- subset(twinData, ZYG == "DZFF", selDVs)
m1 = umxIP(selDVs = selDVs, dzData = dzData, mzData = mzData)
# test_that("umxIP works for different values", {
# 	expect_output(m1 = umxIP(selDVs = selDVs, dzData = dzData, mzData = mzData), "", fixed = TRUE)
# })
m1 = umxRun(m1)
umxSummaryIP(m1, dotFilename = NA)
umxSummary(m1, dotFilename = NA) # test clase
