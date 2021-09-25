# MechaCar_Statistical_Analysis by Kieran Persaud

## Overview of MechaCar Statistical Analysis
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has asked for a review of the production data for insights that may help the manufacturing team. I am tasked with the following;

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Resources
R Studio, tidyverse, ggplot2

## Linear Regression to Predict MPG
Using multiple linear regression, I created a linear model that compares the MPG to various various to determine if there were non-random relationships. This is the formula and the resulting table.

```summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table))```

![Summary Statistics](https://user-images.githubusercontent.com/84286467/134757821-42718ce5-79ee-4ffc-90ac-bc018846a769.PNG)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? To determine the variables that provided a non-random amount of variance to the mpg values in the dataset, we look at the Pr(>|t|) column and see what is less that 0.05. In this case, ground clearance and vehicle length (along with the intercept), provided non-random amounts of variance to the linear model. In other words, they have a significant impact on MPG.
- Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

## Summary Statistics on Suspension Coils
write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-Tests on Suspension Coils
briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

## Study Design: MechaCar vs Competition
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?
