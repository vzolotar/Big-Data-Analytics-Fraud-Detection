> DPvsProv<-read.csv("DPvsProv.csv", header=TRUE)
> DPvsProv
    PROVIDER_ID PROV_CLM_COUNT D_FLAG
1             0           1421        146
2             3             46          0
3            11          36256        964
4            17          10119        223


plot(DPvsProv$PROV_CLM_COUNT, DPvsProv$D_FLAG, xlab = "Total number of claims per provider", ylab = "number of double-payments per provider", pch = 16, cex = 1.3, col = "blue")


DPvsProv_LR_1 = lm(D_FLAG~PROV_CLM_COUNT, data = DPvsProv)
summary(DPvsProv_LR_1)

> DPvsProv_LR_1 = lm(D_FLAG~PROV_CLM_COUNT, data = DPvsProv)
> summary(DPvsProv_LR_1)

Call:
lm(formula = D_FLAG ~ PROV_CLM_COUNT, data = DPvsProv)

Residuals:
    Min      1Q  Median      3Q     Max 
-567.99  -18.42  -12.08   21.20  677.86 

Coefficients:
                Estimate Std. Error t value Pr(>|t|)    
(Intercept)    1.276e+01  7.982e+00   1.598    0.111    
PROV_CLM_COUNT 1.501e-02  3.976e-04  37.762   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 116.6 on 294 degrees of freedom
Multiple R-squared:  0.8291,    Adjusted R-squared:  0.8285 
F-statistic:  1426 on 1 and 294 DF,  p-value: < 2.2e-16


with(DPvsProv,plot(DPvsProv$PROV_CLM_COUNT, DPvsProv$D_FLAG, xlab = "Total number of claims per provider", ylab = "number of double-payments per provider", pch = 16, cex = 1.3, col = "blue"))

abline(DPvsProv_LR_1)
