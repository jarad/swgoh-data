# Star Wars Galaxy of Heroes data

This repository contains the raw data recorded for the mobile game Star Wars
Galaxy of Heroes and tidy versions of that data. 

## Organization

The main directories are 

- code/ test and read data
  - tests/ for testing raw data
  - tidy/ for tidying the data and writing to [data/tidy/](data/tidy/)
- data/ raw and tidy data
  - raw/ contains all the raw data
  - tidy/ contains tidied versions of the data
- docs/ additional documentation

## Scripts

Two main scripts are available and meant to be run from this directory:
tests and tidying. 

Raw data test is available through the following code

    source("test.R")
    
while scripts to tidy the data are available through this code

    source("tidy.R")

## R package

These data are readily available for us in R through the 
[R package swgoh](https://github.com/jarad/swgoh). 