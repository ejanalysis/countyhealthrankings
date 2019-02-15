#' @name lifex
#' @docType data
#' @title life expectancy by tract
#' @description This data set provides life expectancy estimates for US Census tracts.
#' @details  Suggested citation \cr
#'    For data files: National Center for Health Statistics. U.S. Small-Area Life Expectancy Estimates Project (USALEEP): Life Expectancy Estimates File for {Jurisdiction}, 2010-2015]. National Center for Health Statistics. 2018. Available from: https://www.cdc.gov/nchs/nvss/usaleep/usaleep.html.\cr
#'    For methodology: Arias E, Escobedo LA, Kennedy J, Fu C, Cisewski J. U.S. Small-area Life Expectancy Estimates Project: Methodology and Results Summary (PDF 8 MB). National Center for Health Statistics. Vital Health Stat 2(181). 2018.\cr \cr
#'
#'    The U.S. Small-area Life Expectancy Estimates Project (USALEEP) is a partnership of NCHS,
#'    the Robert Wood Johnson Foundation (RWJF), and the
#'    National Association for Public Health Statistics and Information Systems (NAPHSIS)
#'     to produce a new measure of health for where you live.
#'    The USALEEP project produced estimates of
#'    life expectancy at birth - the average number of years a person can expect to live -
#'    for most of the census tracts in the United States for the period 2010-2015.
#'    The abridged period life tables calculated to estimate
#'    census-tract life expectancy at birth for the period 2010-2015
#'    are based on a methodology developed for this project and described in the report:
#'      Arias E, Escobedo LA, Kennedy J, Fu C, Cisewski J.
#'      U.S. Small-area Life Expectancy Estimates Project: Methodology and Results Summary (PDF 8 MB).
#'       National Center for Health Statistics. Vital Health Stat 2(181). 2018.
#'    \cr
#'    Life Expectancy Files contain geographic identifiers, life expectancy at birth for 2010-2015,
#'    and flags noting whether the estimates were based exclusively on observed data,
#'    a combination of observed and predicted values, or exclusively predicted values. \cr
#'    \cr
#'    Obtained as follows: \cr \cr
#'
#'    # require(readr) \cr
#'    # filename <- 'https://ftp.cdc.gov/pub/Health_Statistics/NCHS/Datasets/NVSS/USALEEP/CSV/US_A.CSV' \cr
#'    # x <- read_csv(file = filename, col_names = TRUE) \cr
#'    # colnames(x) <- c('FIPS', 'FIPS.ST', 'FIPS.COUNTY3', 'FIPS.TRACT6', 'lifex', 'se', 'flag') \cr
#'    # lifex <- as.data.frame(x) \cr
#'    # save(lifex, file = 'lifex.RData') \cr
#'
#' @source 2018 dataset from \url{https://www.cdc.gov/nchs/nvss/usaleep/usaleep.html}
#'   obtained 9/28/2028 and slightly modified to provide new column names.
#'
#'   Also see: \url{https://www.cdc.gov/nchs/nvss/usaleep/usaleep.html}
#' @keywords datasets
#' @format A data.frame with 65662 observations (tracts) of 7 variables \cr
#'   FIPS FIPS.ST FIPS.COUNTY3 FIPS.TRACT6  lifex  se   flag  \cr
#'   original colnames: "Tract ID","STATE2KX","CNTY2KX","TRACT2KX","e(0)","se(e(0))","Abridged life table flag" \cr
#' \cr
#' 'data.frame':	65662 obs. of  7 variables: \cr
#'   $ FIPS        : chr  "01001020100" "01001020200" "01001020400" "01001020500" ... \cr
#'   $ FIPS.ST     : chr  "01" "01" "01" "01" ... \cr
#'   $ FIPS.COUNTY3: chr  "001" "001" "001" "001" ... \cr
#'   $ FIPS.TRACT6 : chr  "020100" "020200" "020400" "020500" ... \cr
#'   $ lifex       : num  73.1 76.9 75.4 79.4 73.1 78.3 76.9 73.9 74 72.2 ... \cr
#'   $ se          : num  2.23 3.35 1.02 1.18 1.55 ... \cr
#'   $ flag        : int  3 3 3 1 3 3 2 1 2 2 ...  \cr
NULL
