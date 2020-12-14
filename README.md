## Sprice
<!-- badges: start -->
![](https://img.shields.io/badge/version-0.1.0-blue.svg)
[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

## Overview 
sprice is a data package has a dataset of Saudi Arabian customers prices index. The data represents cutomers price index over six cities from a group of 56 divisions. 

**Expenditure Category:**

* ```food and beverages```: it is the mean of(food, beverages).

* ```tobacco```: it is the mean of(tobacco).

* ```clothing and footwear```:it is the mean of (clothing, footwear).

* ```housing, water, electricity, gas and other fuels```:it is the mean of( actual rentals for housing, maintenance and repair of the                           dwelling, water supply and  miscellaneous services relating to the dwellin , electricity gas and other fuels).

* ```urnishings, household equipment and routine household mai```:it is the mean of (furniture and furnishings carpets and other floor                         coverings,household textiles, household appliances, glassware tableware and household utensils,tools and equipment for house                           and garden,goods and services for routine household maintenance).

* ```health```:it is the mean of (medical products, appliances and equipment, outpatient services, hospital services).

* ```Ttransport```:it is the mean of (purchase of vehicles, operation of personal transport equipment, transport services).

* ```communication```:it is the mean of (postal services, telephone and telefax equipment, telephone and telefax services).

* ```recreation and culture```:it is the mean of (audio-visual photographic and information processing equipment, other major durables                         for recreation and culture, other recreational items and equipment, gardens, and pets, recreational and cultural services,                             newspapers books and stationary, package holidays).

* ```education```:it is the mean of (pre-primary and primary edication, secondary education, post-secondary non-tertiary education,                             tertiary education,education not definable by level).

* ```restaurants and hotels```:it is the mean of (catering services, accommodation services).

* ```miscellaneous goods and services```:it is the mean of (personal care, personal effects n.e.c., social protection, insurance,                               financial services n.e.c.,other services n.e.c.).

**city:** sixteen Saudi Arabian cities inclouded; Riyadh, Makkah, Jeddah, Dammam, Tiaf, Medina, Abha, Alhofof, Tabuk, Buraydah, Jazzan, Hail, Njran, Baha, Skaka and Arar.

**year:** 2020

**month:** months

**price:** The division price.

**All Cities:** the sum of prices of all city on this month in this category.

## Installation
My data package is currently in development so you must install it from Github.
```
if (!requireNamespace("remotes")){
     install.packages("remotes")
     }
remotes::install_github("Amjad-Alt/sprice)
```
## Target
-It is a good data to use as a tool to learn data science and Rstodio programming.

-The big goal is to deliver this package to the General Authority for Statistics of Saudi Arabia to facilitate their work.

## Source 
Data collected from here: https://www.stats.gov.sa/en/394

## Bugs & Enhancements
Your feedback allows us to be better. Please report any problems, bugs, or ideas for enhancement. You can report issues at:
https://github.com/Amjad-Alt/sprice

