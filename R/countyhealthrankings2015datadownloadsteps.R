#' @title Details on obtaining data and fields (for 2014-2016 at least)
#' @aliases downloadandsave
#' @description Obtain and slightly modify 2014 and 2015 datasets from countyhealthrankings.org for use in R. \cr\cr
#'   Source of data: \url{http://www.countyhealthrankings.org/rankings/data} \cr\cr
#'   Also see \url{http://www.countyhealthrankings.org/about-project} \cr\cr
#'   Obtained 3/27/2015 using the code in this function, \code{\link{downloadandsave}}.
#' @details
#'   This package contains the datasets, available via \code{\link{data}}, as well as
#'   this function \code{\link{downloadandsave}} that was used to obtain the datasets.
#'   Also, this package later could require("analyze.stuff") for helper functions lead.zeroes() and put.first()
#'   but that package is not public yet (not yet a public repo), so those two functions are included separately in this package.
#' @param url URL of data including filename
#' @param file Name of local file to be saved in working directory during download
#' @return data.frame of downloaded and cleaned data
#' @examples
#'  \dontrun{
#'
#'  # This is how the two datasets were obtained and cleaned:
#'
#'  countyhealth16 <- downloadandsave(
#'    'http://www.countyhealthrankings.org/sites/default/files/2016CHR_CSV_Analytic_Data.csv',
#'    'countyhealth16.csv')
#'  save(countyhealth16, file='countyhealth16.RData')
#'
#'  countyhealth15 <- downloadandsave(
#'    'http://www.countyhealthrankings.org/sites/default/files/2015%20CHR%20Analytic%20Data.csv',
#'    'countyhealth15.csv')
#'  save(countyhealth15, file='countyhealth15.RData')
#'
#'  countyhealth14 <- downloadandsave(
#'    'http://www.countyhealthrankings.org/sites/default/files/2014%20CHR%20analytic%20data.csv',
#'    'countyhealth14.csv')
#'  save(countyhealth14, file='countyhealth14.RData')
#'  }
#'
#'  \dontrun{
#'
#'  table(countyhealth15$County.that.was.not.ranked, useNA='always')
#'  #  0    1 <NA>
#'  #  1   79 3111
#'  length(countyhealth15$FIPS)
#'  # 3191
#'  table(nchar(countyhealth15$FIPS))
#'  # always 5
#'  }
#' @export
downloadandsave <- function(url, file) {
  utils::download.file(url, file)
  # 2015 dataset used CAPS and 2014 file used 2 header rows and lowercase for these key fields:
  if (grepl('2014', url)) {
    x <- utils::read.csv(file, stringsAsFactors = FALSE, skip = 1)
    x$statecode  <- as.character(x$FIPS.State.Code)
    x$countycode <- as.character(x$FIPS.County.Code)
    x$FIPS <-
      with(x, paste(
        lead.zeroes(statecode, 2),
        lead.zeroes(countycode, 3),
        sep = ''
      ))
    x$ST = x$State
  }
  if (grepl('2015', url)) {
    x <- utils::read.csv(file, stringsAsFactors = FALSE)
    x$STATECODE <- as.character(x$STATECODE)
    x$COUNTYCODE <- as.character(x$COUNTYCODE)
    x$FIPS <-
      with(x, paste(
        lead.zeroes(STATECODE, 2),
        lead.zeroes(COUNTYCODE, 3),
        sep = ''
      ))
    x$ST = x$State
  }
  if (grepl('2016', url)) {
    x <- utils::read.csv(file, stringsAsFactors = FALSE)
    x$STATECODE <- as.character(x$STATECODE)
    x$COUNTYCODE <- as.character(x$COUNTYCODE)
    x$FIPS <-
      with(x, paste(
        lead.zeroes(STATECODE, 2),
        lead.zeroes(COUNTYCODE, 3),
        sep = ''
      ))
    x$ST = x$State
  }
 
  
  x <- put.first(x, c('FIPS', 'ST')) # this function is in analyze.stuff package but a copy is also in the countyhealthrankings package
  # remove commas and store as numbers any numbers that had commas and were therefore read as character
  x[, 8:length(x)] <-
    sapply(x[, 8:length(x)] , function(x)
      as.numeric(gsub(',', '', x)))
  return(x)
}
