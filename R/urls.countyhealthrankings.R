#' @title URLs with Public Health Information on States and/or Counties
#' @description Returns URLs with public health information about US States or Counties, and can also launch a browser to open a single webpage if just 1 specified.
#'   Information is from \url{http://www.countyhealthrankings.org}
#' @param fips Single fips or a vector. Optional (defaults to full USA webpage) character FIPS code of State (2 characters) or County (5 characters), or name of State (e.g., District of Columbia).
#'   Attempts to replace any missing leading zero. Ability to enter County name as fips is not yet working.
#' @param year Optional year as number. Most years are untested.
#' @param launch Optional (default is TRUE but only if just one fips is specified) logical, specifying whether to launch browser to display website. Ignored if >1 fips provided.
#' @return Returns character URL(s).
#' @seealso \code{\link[ejanalysis]{get.county.info}} from \pkg{ejanalysis} package, and \code{\link[choroplethr]{get_county_demographics}} from \pkg{choroplethr} package.
#' @examples
#'    # urls.countyhealthrankings(c('OHIO', 'new york', 25, '31165', 31165, 1001, 0))
#' @export
urls.countyhealthrankings <- function(fips='http://www.countyhealthrankings.org', launch=TRUE, year=2019) {

  usafips <- 'http://www.countyhealthrankings.org'

  year <- as.character(year)

  valid.states <- ejanalysis::get.state.info()[ , c('FIPS.ST', 'statename', 'ST')]
  #   ejanalysis::get.state.info   uses data(lookup.states, package='proxistat')
  valid.states$statename <- tolower(valid.states$statename)

  valid.counties  <- ejanalysis::get.county.info()
  # that uses  data(countiesall, package='proxistat') # has "ST", "countyname", "FIPS.COUNTY", "statename", "fullname"

  # What type of fips or name was provided if any?
  if (missing(fips)) {
    # default home page:
    fips <- 'usa'
    fipstype <- 'usa'
    nfips <- length(fips)
  } else {
    fips <- as.character(fips)
    nfips <- length(fips)
    fipstype <- rep('invalid', nfips)
  }


  # where fips is 1 character, assume it was a state fips that dropped the leading zero
  fips[nchar(fips) == 1] <- lead.zeroes(fips[nchar(fips) == 1], 2)
  # where fips represents a 4 digit number, not name like Ohio, add the missing leading zero to get county fips
  fips[nchar(fips) == 4 & suppressWarnings(!is.na(as.numeric(fips)))] <- lead.zeroes(fips[nchar(fips) == 4 & suppressWarnings(!is.na(as.numeric(fips)))], 5)

  fipstype[nchar(fips) == 2 & (fips %in% valid.states$FIPS.ST)] <- 'fips.state'
  fipstype[nchar(fips) == 2 & (fips %in% valid.states$ST)] <- 'abbrev.state'
  fipstype[tolower(fips) %in% valid.states$statename] <- 'name.state'

  fips[nchar(fips) == 4 & (lead.zeroes(fips, 5) %in% valid.counties$FIPS.COUNTY)] <- lead.zeroes(fips, 5)
  fipstype[nchar(fips) == 5 & (fips %in% valid.counties$FIPS.COUNTY)] <- 'fips.county'

  #print('fipstypes');print(fipstype);print("")

 # if (1 == 0) {

    # WILL TRY TO FIGURE OUT COUNTY FROM COUNTYNAME BUT NEED STATE ALSO AND NOT YET IMPLEMENTED:
    # obtain countyname list here to check that, since it isn't any of the other types checked so far
    #  ****** UNTESTED - NOT WORKING YET

    countyportion <- gsub(', [[:alnum:]_]+', '', tolower(fips))
    stateportion <-  gsub('^.+, ', '', tolower(fips))

    STportion <- valid.states$FIPS.ST[match(tolower(stateportion), tolower(valid.states$ST))]
    # convert state abbreviation to full state name
    stateportion[stateportion %in% valid.states$FIPS.ST] <- valid.states$statename[match(tolower(stateportion[stateportion %in% valid.states$FIPS.ST]), tolower(valid.states$FIPS.ST))]

    stateok <- rep(FALSE, length(fips) )
    stateok[stateportion %in% valid.states$statename]  <- TRUE
    stateok[STportion %in% valid.states$FIPS.ST]  <- TRUE
    #cat(stateportion, countyportion, stateok,'\n')
    countyok <- (tolower(countyportion) %in% tolower(valid.counties$countyname))

    fips[countyok  &  stateok] <- valid.counties$FIPS.COUNTY[match(
      paste(tolower(countyportion[countyok  &  stateok]), tolower(stateportion[countyok  &  stateok]), sep = ''),
      paste(tolower(valid.counties$countyname), tolower(valid.counties$statename), sep = '')
      )]
    fipstype[countyok  &  stateok] <- 'name.county'
    #fipstype[countyok  &  stateok] <- 'fips.county'

    #if ( charmatch(tolower(fips), ....  xxx ) {warning(paste('only partial match on countyname - not used: ', partmatch, sep='') )}
#  }

  if (all(fipstype == 'invalid')) {
    stop('no valid fips')
  }

  if (any(fipstype == 'invalid')) {
    warning('some invalid fips - returning USA URL for those')
    fipstype[fipstype == 'invalid'] <- 'usa'
  }

  ################### #

  statename   <- vector(mode='character', length=nfips)
  myurl       <- vector(mode='character', length=nfips)
  fips.county <- vector(mode='character', length=nfips)

  myurl[fipstype == 'usa'] <- usafips

  statename[fipstype == 'fips.state'] <- valid.states$statename[match(fips[fipstype == 'fips.state'], valid.states$FIPS.ST)]
  statename[fipstype == 'fips.state'] <- gsub(' ', '-', statename[fipstype == 'fips.state'] )
  myurl[fipstype == 'fips.state'] <- paste('http://www.countyhealthrankings.org/app/#!/', statename[fipstype == 'fips.state'], '/', year, '/overview', sep='')
  # http://www.countyhealthrankings.org/app/#!/new-york/2015/overview
  #print(statename); print(myurl)

  statename[fipstype == 'name.state'] <- valid.states$statename[match(tolower(fips[fipstype == 'name.state']), tolower(valid.states$statename))] # already lowercase, but ok to do again
  statename[fipstype == 'name.state'] <- gsub(' ', '-', statename[fipstype == 'name.state'])
  myurl[fipstype == 'name.state'] <- paste('http://www.countyhealthrankings.org/app/#!/', statename[fipstype == 'name.state'], '/', year, '/overview', sep='')
  # http://www.countyhealthrankings.org/app/#!/new-york/2015/overview
  #   ### valid.states$statename
  #print(statename); print(myurl)

  statename[fipstype == 'fips.county'] <- valid.states$statename[match(substr(fips[fipstype == 'fips.county'], 1, 2), valid.states$FIPS.ST)]
  statename[fipstype == 'fips.county'] <- gsub(' ', '-', statename[fipstype == 'fips.county'])
  myurl[fipstype == 'fips.county'] <- paste('http://www.countyhealthrankings.org/app/#!/', statename[fipstype == 'fips.county'], '/', year, '/compare?counties=', substr(fips[fipstype == 'fips.county'], 3, 5), sep='')
  # one option is this URL, and it doesn't require knowing the full county name, just the county fips & statename, so it is easier to get to here:
  # http://www.countyhealthrankings.org/app/#!/california/2015/compare?counties=001
  #print(statename); print(myurl)

#  if (1 == 0) {
    # countyname <- gsub(' ', '-', countyname)
    # if we have the right format of countyname, we could use this other URL, which gives a slighty different view of the county info:
    # myurl <- paste('http://www.countyhealthrankings.org/app/#!/', statename, '/',year,'/rankings/', countyname,'/county/outcomes/overall/snapshot', sep='')
    # e.g.,
    # http://www.countyhealthrankings.org/app/#!/new-york/2015/rankings/bronx/county/outcomes/overall/snapshot
  # A good option for counties is this URL, and it doesn't require knowing the full county name, just the fips, so it is easier to get to here:
  # http://www.countyhealthrankings.org/app/#!/california/2015/compare?counties=001
  #myfullname <- paste(countyportion, ', ', stateportion)
  fips.county[fipstype == 'name.county'] <- fips[fipstype == 'name.county']
  statename[fipstype == 'name.county'] <- stateportion[fipstype == 'name.county']
  statename[fipstype == 'name.county'] <- gsub(' ', '-', statename[fipstype == 'name.county'])
  myurl[fipstype == 'name.county'] <- paste('http://www.countyhealthrankings.org/app/#!/', statename[fipstype == 'name.county'], '/', year, '/compare?counties=', fips.county[fipstype == 'name.county'], sep='')
#  }




  if (launch & nfips == 1) {
    #url.open(myurl)
    utils::browseURL(myurl)
  }

  return(myurl)
}
