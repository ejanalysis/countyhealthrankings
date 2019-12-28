#' @name countyhealth17
#' @docType data
#' @aliases countyhealth17
#' @title Countyhealthrankings.org 2017 dataset *** WORK IN PROGRESS
#' @description This data set provides a variety of health indicators for each US county.
#' @usage data('countyhealth17')
#' @source 2014 - 2019 datasets from  \url{http://www.countyhealthrankings.org/explore-health-rankings/rankings-data-documentation}  \cr
#'   e.g., \cr  \cr
#'   utils::browseURL('http://www.countyhealthrankings.org/rankings/data')  \cr
#'   or  \cr \cr
#'   fname <- 'analytic_data2019_0.csv'  \cr
#'   utils::download.file(url = paste('http://www.countyhealthrankings.org/sites/default/files/', fname, sep = ''), destfile = fname)  \cr
#'    ### maybe better to use readr::read_csv() since it is better at guessing preferred format of each column  \cr
#'   countyhealth19 <- utils::read.csv(fname, stringsAsFactors = FALSE)  \cr
#'   require(readr)  \cr
#'   countyhealth19 <- readr::read_csv(fname, skip = 1, col_types = paste('ccccc', paste(rep('d',534-5), collapse = ''), sep = '')) \cr
#'   countyhealth19 <- as.data.frame(countyhealth19) \cr
#'   colfullnames19 <- readr::read_csv(fname, n_max = 1, col_names = FALSE) \cr
#'   colfullnames19 <- as.vector(unlist(colfullnames19)) # simpler \cr
#'   countyhealth19[1:5, 1:9] \cr
#'   save(countyhealth19, file = 'countyhealth19.RData') \cr
#'   save(colfullnames19, file = 'colfullnames19.RData') \cr
#'   \cr
#'   2014/2015 data obtained 3/27/2015 and slightly modified to provide \cr
#'      5 digit FIPS as character field, and ST field as copy of State field. \cr
#'    The 2016 data was obtained 3/17/2016 and was not modified \cr
#'    The 2017 data was obtained 3/28/2018 \cr
#'    The 2018 data was obtained 3/28/2018 \cr
#'    The 2019 data was obtained 4/22/2019 \cr
#'    Also see: \url{http://www.countyhealthrankings.org/about-us} \cr
#' @keywords datasets
#' @format A data.frame with >3000 rows (Counties) and >300 columns (variables)
NULL
