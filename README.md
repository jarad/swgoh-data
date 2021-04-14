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

    source("code/test.R")
    
Currently the testing code is set up for daily testing. If you want to test 
a particular day in the past, you need to modify the `dates` object in the 
[setup-files.R](code/tests/setup-files.R) file. 
    
The script to tidy the data are available through the code

    source("code/tidy.R")

This will create a number of files that can be found in the 
[data/tidy/](data/tidy/) folder. 

## R package

These data are readily available for use in R through the 
[R package swgoh](https://github.com/jarad/swgoh). 
