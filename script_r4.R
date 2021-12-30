ICDsVSLoc<-read.csv("ICDsVSLoc.csv", header=TRUE)
ICDsVSLoc
    location_ID LOC_CLM_COUNT WRONG_ICD
   PROV_LOCATION_ID LOC_CLM_COUNT WRONG_ICD
1                 1        329879      1205
2                 2        268034      1208
3                 3        283200      1023
4                 4        107953       814


plot(ICDsVSLoc$LOC_CLM_COUNT, ICDsVSLoc$WRONG_ICD, xlab = "Total number of claims per location", ylab = "Number of Wrong ICDs per location", pch = 16, cex = 1.3, col = "blue")


ICDsVSLoc_LR_1 = lm(WRONG_ICD~LOC_CLM_COUNT, data = ICDsVSLoc)
summary(ICDsVSLoc_LR_1)


Call:
lm(formula = WRONG_ICD ~ LOC_CLM_COUNT, data = ICDsVSLoc)

Residuals:
    Min      1Q  Median      3Q     Max 
-722.53   22.24   33.94   34.45  842.65 

Coefficients:
                Estimate Std. Error t value Pr(>|t|)    
(Intercept)   -3.445e+01  2.759e+01  -1.249    0.216    
LOC_CLM_COUNT  4.319e-03  2.495e-04  17.309   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 200.1 on 63 degrees of freedom
Multiple R-squared:  0.8262,    Adjusted R-squared:  0.8235 
F-statistic: 299.6 on 1 and 63 DF,  p-value: < 2.2e-16


with(ICDsVSLoc,plot(ICDsVSLoc$LOC_CLM_COUNT, ICDsVSLoc$WRONG_ICD, xlab = "Total number of claims per location", ylab = "Number of Wrong ICDs per location", pch = 16, cex = 1.3, col = "blue"))

abline(ICDsVSLoc_LR_1)
