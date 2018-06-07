#' @name countyhealth17
#' @docType data
#' @aliases countyhealth17
#' @title Countyhealthrankings.org 2017 dataset *** WORK IN PROGRESS
#' @description This data set provides a variety of health indicators for each US county.
#' @usage data('countyhealth17')
#' @source 2014 2015 2016 2017 2018 datasets from \url{http://www.countyhealthrankings.org/rankings/data}
#'   # e.g., 
#'   browseURL('http://www.countyhealthrankings.org/rankings/data') 
#'   # or 
#'   download.file(url = paste('http://www.countyhealthrankings.org/sites/default/files/', fname, sep = ''), destfile = fname)
#'   # maybe better to use readr::read_csv() since it is better at guessing preferred format of each column
#'   # require(readr)
#'   # countyhealth17 <- read_csv(fname)
#'   countyhealth17 <- read.csv(fname, stringsAsFactors = FALSE)
#'   save(countyhealth17, file = 'countyhealth17.RData')
#'   
#'   2014/2015 data obtained 3/27/2015 and slightly modified to provide
#'     5 digit FIPS as character field, and ST field as copy of State field.
#'   The 2016 data was obtained 3/17/2016 and was not modified 
#'   The 2017 data was obtained 3/28/2018
#'   The 2018 data was obtained 3/28/2018
#'   Also see: \url{http://www.countyhealthrankings.org/about-project}
#' @keywords datasets
#' @format A data.frame with >3000 rows (Counties) and >300 columns (variables)
NULL
