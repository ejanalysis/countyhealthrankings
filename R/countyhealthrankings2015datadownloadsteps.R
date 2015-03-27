# OBTAIN AND SLIGHTLY MODIFY COUNTYHEALTHRANKINGS.ORG 2015 DATASET FOR USE IN R
# Source of data: http://www.countyhealthrankings.org/about-project
# obtained 3/27/2015 using the following code

require("analyze.stuff") # for lead.zeroes() and put.first()
# or if package not available (not yet a public repo):
# put.first <- function(x, fields) {
#   if (missing(x) | missing(fields)) {stop('must specify x=data.frame and fields=vector of fieldnames to move to first few columns of x')}
#   if (!is.data.frame(x)) {stop('x must be a data.frame')}
#   if (any(!(fields %in% names(x)))) {stop('fields must all be in names(x)')}
#   x <- x[ , c(fields, names(x[!(names(x) %in% fields)]))]
#   return(x)
# }
# lead.zeroes <- function(fips, length.desired) {
#   fips <- as.character(fips)
#   # might trim whitespace?  
#   if ( (length(length.desired) >1) & (length(fips) != length(length.desired))) {print("warning: #s of inputs don't match")}
#   if ( any(length.desired==0 | length.desired>=100) ) {stop("error: string lengths must be >0 & <100")}
#   if ( any(nchar(fips) > length.desired) ) {stop("error: some are longer than desired length")}
#   fips <- paste( paste( rep( rep("0", length(length.desired)), length.desired), collapse=""), fips, sep="") 
#   # does that work vectorized?
#   fips <- substr(fips, nchar(fips) - length.desired + 1, nchar(fips))
#   return(fips)
# }

download.file('http://www.countyhealthrankings.org/sites/default/files/2015%20CHR%20Analytic%20Data.csv', '2015 CHR Analytic Data.csv')
chr2015=read.csv('2015 CHR Analytic Data.csv', stringsAsFactors=FALSE)
chr2015$STATECODE <- as.character(chr2015$STATECODE)
chr2015$COUNTYCODE <- as.character(chr2015$COUNTYCODE)
chr2015$FIPS <- with(chr2015, paste(lead.zeroes(STATECODE, 2), lead.zeroes(COUNTYCODE, 3), sep=''))
chr2015$ST=chr2015$State
chr2015 <- put.first(chr2015, c('FIPS', 'ST'))
countyhealth15=chr2015
save(countyhealth15, file='countyhealth15.RData')



# # e.g., boxplot by state:
# statemedians=aggregate(chr2015$Poor.or.fair.health.Value, by=list(chr2015$ST), FUN=function(x) median(x, na.rm = TRUE))
# stateorder=statemedians[order(statemedians[,2], decreasing = TRUE),1]
# boxplot(chr2015$Poor.or.fair.health.Value ~ factor(chr2015$ST, levels=stateorder ), cex.axis=0.5,
#         main='Range of county values by State, 2015 % in poor or fair health')

# table(chr2015$County.that.was.not.ranked, useNA='always')
# 
# 0    1 <NA> 
#   1   79 3111 
# length(chr2015$FIPS)
# 3191
# table(nchar(chr2015$FIPS))
# always 5
# table(chr2015$ST)

