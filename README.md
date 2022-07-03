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

![summarystats1](
