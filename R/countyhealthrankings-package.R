#' @docType package
#' @name countyhealthrankings-package
#' @aliases countyhealthrankings
#' @title countyhealthrankings.org dataset in R
#' @description
#'   Provides health indicators data by county, from countyhealthrankings.org, for use in R.
#'   Source of data: 2014 and 2015 datasets from \url{http://www.countyhealthrankings.org/rankings/data} which redirects to newer URL:
#'   Data as of 2019: \url{http://www.countyhealthrankings.org/explore-health-rankings/rankings-data-documentation}
#'   Also see: \url{http://www.countyhealthrankings.org/about-project} obtained 3/27/2015 and slightly modified to provide 5 digit FIPS as character field, and ST field as copy of State field.
#' @references
#' \url{http://ejanalysis.github.io} \cr
#' \url{http://www.ejanalysis.com/} \cr
#' @examples
#'   #data('countyhealth14')
#'   #data('countyhealth15')
#'
#'   # Example of using the data to see a histogram of counties
#'   hist(countyhealth14$Poor.or.fair.health.Value, 100,
#'     main='Variation across counties in health, 2014 dataset', ylab='Number of counties',
#'     xlab='Percent of county residents that report being in only poor or fair health',
#'     ylim = c(0,200), xlim = c(0,0.5))
#'
#'     hist(countyhealth19[ , match("Poor or fair health raw value", colfullnames19)], 100,
#'     main='Variation across counties in health, 2019 dataset', ylab='Number of counties',
#'     xlab='Percent of county residents that report being in only poor or fair health',
#'     ylim = c(0,200), xlim = c(0,0.5))
#'
#'  # Example of using the data to create a boxplot by state:
#'  statemedians=aggregate(countyhealth15$Poor.or.fair.health.Value, by=list(countyhealth15$ST),
#'    FUN=function(x) median(x, na.rm = TRUE))
#'  stateorder=statemedians[order(statemedians[,2], decreasing = TRUE),1]
#'  boxplot(
#'    countyhealth15$Poor.or.fair.health.Value ~ factor(countyhealth15$ST, levels=stateorder),
#'    cex.axis=0.5, main='Range of county values by State, 2015 % in poor or fair health')
NULL
