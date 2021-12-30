ICDsvsProv<-read.csv("ICDsvsProv.csv", header=TRUE)
ICDsvsProv
    PROVIDER_ID PROV_CLM_COUNT WRONG_ICD
1             0           1421         2
2             3             46         0
3            11          36256       145
4            17          10119         9
5            25          26712        42
6            45            843         0
7            56         128418      5173


plot(ICDsvsProv$PROV_CLM_COUNT, ICDsvsProv$WRONG_ICD, xlab = "Total number of claims per provider", ylab = "Number of Wrong ICDs per Provider", pch = 16, cex = 1.3, col = "blue")


ICDsvsProv_LR_1 = lm(WRONG_ICD~PROV_CLM_COUNT, data = ICDsvsProv)
summary(ICDsvsProv_LR_1)

Call:
lm(formula = WRONG_ICD ~ PROV_CLM_COUNT, data = ICDsvsProv)

Residuals:
   Min     1Q Median     3Q    Max 
-598.4  -28.6   40.9   50.3 4133.2 

Coefficients:
                 Estimate Std. Error t value Pr(>|t|)    
(Intercept)    -5.194e+01  1.821e+01  -2.852  0.00466 ** 
PROV_CLM_COUNT  8.501e-03  9.073e-04   9.370  < 2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 266 on 294 degrees of freedom
Multiple R-squared:   0.23,     Adjusted R-squared:  0.2274 
F-statistic:  87.8 on 1 and 294 DF,  p-value: < 2.2e-16



with(ICDsvsProv,plot(ICDsvsProv$PROV_CLM_COUNT, ICDsvsProv$WRONG_ICD, xlab = "Total number of claims per provider", ylab = "Number of Wrong ICDs per Provider", pch = 16, cex = 1.3, col = "blue"))

abline(ICDsvsProv_LR_1)

