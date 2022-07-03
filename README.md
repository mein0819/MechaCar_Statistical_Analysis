# MechaCar Statistical Analysis

## Project Overview

AutosRUs is suffering from production troubles concerning their automobile prototype, MechaCar. Upper management is looking for analysis to review production data that involves the following:

- Linear regression analysis to indentify which variables in the dataset predict mpg of the protypes
- Summary statistics on the PSI of the suspension coils from the manufacturing lots
- T-tests to determine if the manufacturing lots are statistically differerent from the mean population
- A new statistical study to compare performance against vehicles from other manufacturers

## Resources

- Data: MechaCar_mpg.csv, Suspension_Coil.csv
- Software: R Studio 2022.02.3 Build 492

## Linear Regression to Predict MPG

![linRegression](https://github.com/mein0819/MechaCar_Statistical_Analysis/blob/main/readMe_Images/deliv1_stats.png)


- The strongest contendors for variables contributing to non-random variance are vehicle length(P-value = 2.60e-12) and
  and ground clearance (P-value = 5.21e-8). The intercept's P-value is also significant, indicating that factors outside
  the dataset have are having an impact on the mgp
  
- The slope of this linear model is not zero, thus rejecting the null hypothesis, as shown by the P-value of 5.35e-11 which 
  is much lower than the assumed significance level of .05%. 
  
- The R-squared value of .7149 shows a strong correlation in the dataset when using this linear model and can be used to 
  predict the mpg of MechaCar protypes, although other variables need to be considered. 
  
## Summary Statistics on Suspension Coils
### Summary Stats for All Lots
![summarystats1](https://github.com/mein0819/MechaCar_Statistical_Analysis/blob/main/readMe_Images/deliv2_1.png)

### Summary Stats By Lot
![summarystats2](https://github.com/mein0819/MechaCar_Statistical_Analysis/blob/main/readMe_Images/deliv2_2.png)

- The summary statistics for all lots shows a variance of 62 psi, which falls under the maximum variance of 100 psi
- The summary statistics by lot shows that lot 3 is a serious contributor to variance, with a variance of 170 psi 
  compared to variance of .98 for lot 1 and 7.4 for lot 2.
- Overall the data meets the requirement but lot 3 shows problems moving forward that need to be addressed.

## T-Tests on Suspension Coils

![tTestAll](https://github.com/mein0819/MechaCar_Statistical_Analysis/blob/main/readMe_Images/tTest.png)

- The first T-test shows that the sample mean is not statistically different from the population mean, with a mean if 1498,
  and a p-value of .06 which does not support rejecting the null hypothesis
  
- T-tests for each individual lot show that Lot 1 and 2 are not statistically different from the population mean and their
  p-values do not support rejecting the null hypothesis. Lot 3 shows a slight variance in the mean value from the 
  population and a p-value that is low enough to reject the null hypothesis. This analysis again shows that Lot 3             prototypes require further analysis to determine if they should be discarded or if there is a factor that can be           addressed.   
