# Big Data Analytics: Fraud Detection

### 📝 Description 
The project presents a proof of concept of a Fraud Detection Analytics Solution. The purpose of the project to demonstrate how the potential fraud can be detected based on the mockup data set reflecting the medical records and generated with mockaroo.com and also include the public datasets from kaggle.com 

-----

##### Tools / Languages  
<img src="https://img.shields.io/badge/MySQL-005C84?logo=MySQL&logoColor=white" /> <img src="https://img.shields.io/badge/SQL-c64646?logo=sqlserver&logoColor=black" /> <img src="https://img.shields.io/badge/R-276DC3?logo=r&logoColor=white" /> <img src="https://img.shields.io/badge/Microsoft_Excel-217346?logo=r&logoColor=white" /> 



##### Platform 
<img height="20" src="https://img.shields.io/badge/MS DOS-000000?logo=dos&logoColor=white" /> <img height="20" src="https://img.shields.io/badge/Windows-0078D6?logo=windows&logoColor=white" /> 



##### Data Sources  
- mockaroo.com - lets you generate up to 1,000 rows of realistic test data in CSV, JSON, SQL, and Excel formats
- kaggle.com - Access a huge repository of community published data & code

-----

### 1️⃣ Data Model

<img src="https://github.com/vzolotar/Big-Data-Analytics-Fraud-Detection/blob/main/images/data_model.jpg" >



### 2️⃣ Number of Double-Payments per Provider vs Number of Total Claims per Provider
<img src="https://github.com/vzolotar/Big-Data-Analytics-Fraud-Detection/blob/main/images/double_pay.jpg" >

y = 0.015x + 12.757  
R² = 0.8291
r=0.910549285
Strong Positive Correlation

<img src="https://github.com/vzolotar/Big-Data-Analytics-Fraud-Detection/blob/main/images/double_pay1.jpg" >

<img src="https://github.com/vzolotar/Big-Data-Analytics-Fraud-Detection/blob/main/images/r1.JPG" >



### 3️⃣ Number of Wrong ICDs per Provider vs Total Number of Claims per Provider
<img src="https://github.com/vzolotar/Big-Data-Analytics-Fraud-Detection/blob/main/images/icds.jpg" >

y = 0.0085x - 51.938  
R² = 0.23
r=0.479583152
Weak Positive Correlation

<img src="https://github.com/vzolotar/Big-Data-Analytics-Fraud-Detection/blob/main/images/r2.JPG" >



### 4️⃣ Total Number of Claims vs Double-Payments per Location

<img src="https://github.com/vzolotar/Big-Data-Analytics-Fraud-Detection/blob/main/images/claims.jpg" >

y = 0.0172x - 47.984  
R² = 0.9147
r=0.956399498
Strong Positive Correlation

<img src="https://github.com/vzolotar/Big-Data-Analytics-Fraud-Detection/blob/main/images/r3.JPG" width="720" height="600">

````markdown
> DPvsProv<-read.csv("DPvsProv.csv", header=TRUE)

> DPvsProv
PROVIDER_ID PROV_CLM_COUNT D_FLAG

1  0  1421  146
2  3  46  0
3  11  36256  964
4  17  10119  223

plot(DPvsProv$PROV_CLM_COUNT, DPvsProv$D_FLAG, xlab = "Total number of claims per provider", ylab = "number of double-payments per provider", pch = 16, cex = 1.3, col = "blue")
````



### 5️⃣ Total Number of Claims per Location vs Number of Wrong ICDs per Location

<img src="https://github.com/vzolotar/Big-Data-Analytics-Fraud-Detection/blob/main/images/loc.jpg" >

y = 0.0043x - 34.453  
R² = 0.8262
r=0.908955444
Strong Positive Correlation

<img src="https://github.com/vzolotar/Big-Data-Analytics-Fraud-Detection/blob/main/images/r4.JPG"  width="750" height="600">

````markdown
ICDsVSLoc<-read.csv("ICDsVSLoc.csv", header=TRUE)

ICDsVSLoc
location_ID LOC_CLM_COUNT WRONG_ICD
PROV_LOCATION_ID LOC_CLM_COUNT WRONG_ICD

1  1  329879  1205
2  2  268034  1208
3  3  283200  1023
4  4  107953  814

plot(ICDsVSLoc$LOC_CLM_COUNT, ICDsVSLoc$WRONG_ICD, xlab = "Total number of claims per location", ylab = "Number of Wrong ICDs per location", pch = 16, cex = 1.3, col = "blue")

````
