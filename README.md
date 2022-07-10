# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
Below is a screenshot of the output of the linear regression model to predict MPG:
![Linear Regression to Predict MPG](https://github.com/nikkiheaston/MechaCar_Statistical_Analysis/blob/main/Linear_Regression_Predict_MPG.PNG)

Vehicle length and ground clearance are the only variables whose p-value is less than .05. Therefore, they provide a non-random amount of variance to the mpg values in the dataset.

The p-value of the linear regression is well below .05 which means that we reject the null hypothesis that the slope is 0. 

The r-squared value is .7149 which means that roughtly 71% of the variability in MPG is explained by the variables. In my opinion, this linear model is a good predictor of MPG of MechaCar prototypes.

## Summary Statistics on Suspension Coils

![total_summary_df_pic](https://github.com/nikkiheaston/MechaCar_Statistical_Analysis/blob/main/total_summary_df.PNG)

For all manufacturing lots, the variance in PSI is approximately 62 which is below the limit of 100 PSI. Therefore all lots are meeting the design specifications. 

![lot_summary_df_pic](https://github.com/nikkiheaston/MechaCar_Statistical_Analysis/blob/main/lot_summary_df.PNG)

Lots 1 and 2 are well below the limit of 100 PSI variance and therefore are meeting design specifications. However, Lot 3 has a variance of 170 PSI, which means it is not within the design specifications. 

## T-Tests on Suspension Coils
In performing t-tests on the lot summary, as well as by looking at each individual lot, I discovered the following:

![lot_summary](https://github.com/nikkiheaston/MechaCar_Statistical_Analysis/blob/main/t_test_lot_summary.PNG)

The calcualted p-value is .4533 which is well above the .05 siginficance level. Therefore, I fail to reject the null hypothesis that the lot mean is not statistically different from the population mean.

For each individual lot:

![lot1_t-test](https://github.com/nikkiheaston/MechaCar_Statistical_Analysis/blob/main/t_test_lot1_summary.PNG)
![lot2_t_test](https://github.com/nikkiheaston/MechaCar_Statistical_Analysis/blob/main/t_test_lot2_summary.PNG)

In Lot 1 and Lot 2 the p-value equals exactly 1 and .6072 respectively. In this case, I fail to reject the null hypothesis that the lot means are statistically different from the population mean.

![lot3_t_test](https://github.com/nikkiheaston/MechaCar_Statistical_Analysis/blob/main/t_test_lot3_summary.PNG)

But for Lot 3, the p-value is .04 which is below the significance level of .05. In this case, I would reject the null hypothesis and state that the mean of the PSI for Lot 3 is statistically different from the population mean PSI.

## Study Design: MechaCar vs Competition
To compare MechaCar to the competition I would design a study that analyzes the costs, fuel efficiencies on highway and city, and maintenance costs. I would perform the study by conducting a t-test because it allows me to determine a statistical difference between the means from two samples. In this case, the two samples are the MechaCars and the competition. 

The null hypothesis for my test would be that there is no statistical difference between the means of the MechaCar costs and the competition's, no statistical difference in the mean fuel efficiences, and no statistical difference in the means of the cars' maintenance costs. The alternative hypothesis is that there is a statistical difference in the means of the MechaCar's costs, fuel efficiencies, and maintenance costs and the means of the competitor. 

The data I would need to collect for this study is: 
 - sale price data over the last year for the competition and use that to compare to the suggested sale price of the MechaCar
  - daily fuel efficiency for highway and city driving for the competion and compare it to MechaCar's fuel efficiency
  - annual maintenance costs for the competition and compare to MechaCar's projected maintenance costs 
