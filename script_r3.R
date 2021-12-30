DPvsLoc<-read.csv("DPvsLoc.csv", header=TRUE)
DPvsLoc
   PROV_LOCATION_ID LOC_CLM_COUNT D_FLAG
1                 1        329879   4809
2                 2        268034   3779
3                 3        283200   6040
4                 4        107953   1925
5                 5         94588   1607
6                 6           582     18
7                 7        173951   1200


plot(DPvsLoc$LOC_CLM_COUNT, DPvsLoc$D_FLAG, xlab = "Total number of claims per location", ylab = "number of double-payments per location", pch = 16, cex = 1.3, col = "blue")


DPvsLoc_LR_1 = lm(D_FLAG~LOC_CLM_COUNT, data = DPvsLoc)
summary(DPvsLoc_LR_1)


Call:
lm(formula = D_FLAG ~ LOC_CLM_COUNT, data = DPvsLoc)

Residuals:
     Min       1Q   Median       3Q      Max 
-2427.74    41.54    47.97    68.99  1411.40 

Coefficients:
                Estimate Std. Error t value Pr(>|t|)    
(Intercept)   -4.798e+01  7.320e+01  -0.656    0.515    
LOC_CLM_COUNT  1.721e-02  6.619e-04  25.997   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 530.8 on 63 degrees of freedom
Multiple R-squared:  0.9147,    Adjusted R-squared:  0.9134 
F-statistic: 675.9 on 1 and 63 DF,  p-value: < 2.2e-16


with(DPvsLoc,plot(DPvsLoc$LOC_CLM_COUNT, DPvsLoc$D_FLAG, xlab = "Total number of claims per location", ylab = "number of double-payments per location", pch = 16, cex = 1.3, col = "blue"))

abline(DPvsLoc_LR_1)
