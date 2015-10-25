---
title       : 09 - Data Products Project  
subtitle    : Part II - Reproducible Pitch Presentation
author      : S Prasad
job         : Coursera Project
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Plot mpg against a chosen predictor 

using ISLR library dataset 'Auto'

### Audience: 
my peers at the October 2015 class of 09 - Developing Data Products at John Hopikins 'Bloomberg School of Biostatics'


### Goal: 
To demonstrate the ability to create a slides deck using R Package 'slidify' and creation of a shiny app.

--- .class s1 

ISLR pacakge has many built in datasets, one of which is the 'Auto' dataset.

It is a data frame with 392 observations on the following 9 variables :
  1. mpg miles per gallon
  2. cylinders Number of cylinders between 4 and 8
  3. displacement Engine displacement (cu. inches)
  4. horsepower Engine horsepower
  5. weight Vehicle weight (lbs.)
  6. acceleration Time to accelerate from 0 to 60 mph (sec.)
  7. year Model year (modulo 100)
  8. origin Origin of car (1. American, 2. European, 3. Japanese)
  9. name Vehicle name

--- .class s2

This simple shiny app allows the user to plot 'mpg' against one of these predictors, categorized by the number of cylinders:
  1. displacement
  2. horsepower
  3. weight
  4. acceleration
  5. pair-wise Plot of mpg against displacement, horsepower, weight, and acceleration.
  
Being a technology demostrator, this slidify deck and the shiny app has been kept very basic.

--- .class s3

## Where can you find the app?

the app is hosted at the RStudio shiny server at https://sprasad.shinyapps.io/Project002









