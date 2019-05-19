#' @title URLs for Community Health Status Indicators for US Counties from CDC
#' @description Returns URLs with public health information about US Counties,
#'   and can also launch a browser to open a single webpage if just 1 specified.
#'   Information is from \url{http://wwwn.cdc.gov/CommunityHealth}
#' @details *** WARNING: Not yet tested for all counties, so multi-word and and nonstandard names are unlikely to work yet.
#' @param fips Single fips or a vector. Optional (defaults to homepage) character
#'   FIPS code of County (5 characters), or "Name of County, State" format. (e.g., "Montgomery County, MD").
#'   Attempts to replace any missing leading zero. Ability to enter County name as fips is not yet working.
#' @param type Optional (default is health) vector (same length as fips) specifying type of indicator or report to show for URL(s). Can be any of the following:
#'     health, demog, pm, highways, poverty. Others may be added later.
#' @param launch Optional (default is TRUE but only if just one fips is specified) logical, specifying whether to launch browser to display website. Ignored if >1 fips provided.
#' @return Returns character URL(s).
#' @seealso \code{\link{urls.countyhealthrankings}}, \code{\link[ejanalysis]{get.county.info}} from \pkg{ejanalysis} package, and \code{\link[choroplethr]{get_county_demographics}} from \pkg{choroplethr} package.
#' @examples
#'   urls.chsi('01005')
#'   urls.chsi('01005', 'demog')
#'   urls.chsi('06037', 'pm')
#'   urls.chsi(c('31165', 31165, 1001, 0))
#' @export
urls.chsi <- function(fips='http://www.cdc.gov/CommunityHealth', type='health', launch=TRUE) {

  usafips <- 'http://www.cdc.gov/CommunityHealth'

  valid.states <- ejanalysis::get.state.info()[ , c('FIPS.ST', 'statename', 'ST')]
  #   ejanalysis::get.state.info   uses data(lookup.states, package='proxistat')
  #valid.states$statename <- tolower(valid.states$statename)

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

  # where fips represents a 4 digit number, not name like Ohio, add the missing leading zero to get county fips
  fips[nchar(fips)==4 & suppressWarnings(!is.na(as.numeric(fips)))] <- lead.zeroes(fips[nchar(fips)==4 & suppressWarnings(!is.na(as.numeric(fips)))], 5)
  #fips[nchar(fips)==4 & (analyze.stuff::lead.zeroes(fips, 5) %in% valid.counties$FIPS.COUNTY)] <- analyze.stuff::lead.zeroes(fips, 5)
  fipstype[nchar(fips)==5 & (fips %in% valid.counties$FIPS.COUNTY)] <- 'fips.county'

  # WILL TRY TO FIGURE OUT COUNTY FROM COUNTYNAME BUT NEED STATE ALSO AND NOT YET IMPLEMENTED:

  if (all(fipstype=='invalid')) {
    stop('no valid fips')
  }

  if (any(fipstype=='invalid')) {
    warning('some invalid fips - returning USA URL for those')
    fipstype[fipstype=='invalid'] <- 'usa'
  }


  myurl       <- vector(mode='character', length=nfips)
  #fips.county <- vector(mode='character', length=nfips)
  countyname  <- vector(mode='character', length=nfips)
  ST          <- vector(mode='character', length=nfips)
  profile     <- vector(mode='character', length=nfips)

  ST[fipstype=='fips.county'] <- valid.states$ST[match(substr(fips[fipstype=='fips.county'], 1, 2), valid.states$FIPS.ST)]
  countyname[fipstype=='fips.county'] <- valid.counties$countyname[match(fips[fipstype=='fips.county'], valid.counties$FIPS.COUNTY)]
  countyname[fipstype=='fips.county'] <- gsub(' County$', '', countyname[fipstype=='fips.county'] )

  # 'demog'
  # http://wwwn.cdc.gov/CommunityHealth/profile/countyprofile/MD/Montgomery/
  # 'health' = health and environment all:
  # http://wwwn.cdc.gov/CommunityHealth/profile/currentprofile/MD/Montgomery/

  profile[type=='demog']   <- 'countyprofile'
  profile[type=='health'] <- 'currentprofile'

  # 'poverty'
  # http://wwwn.cdc.gov/CommunityHealth/profile/currentprofile/MD/Montgomery/310013
  # 'pm'   PM2.5:
  # http://wwwn.cdc.gov/CommunityHealth/profile/currentprofile/MD/Montgomery/310019
  # 'highways'   Living near highways:
  # http://wwwn.cdc.gov/CommunityHealth/profile/currentprofile/MD/Montgomery/310048

  indicator <- rep('', nfips)
  indicator[type=='poverty']  <- '310013'
  indicator[type=='pm']       <- '310019'
  indicator[type=='highways'] <- '310048'

  # CONSTRUCT THE URL HERE
  myurl[fipstype=='fips.county'] <- paste('http://wwwn.cdc.gov/CommunityHealth/profile/', profile[fipstype=='fips.county'], '/', ST[fipstype=='fips.county'], '/', countyname[fipstype=='fips.county'], '/', indicator[fipstype=='fips.county'], sep='')

  myurl[fipstype=='usa'] <- usafips

  if (launch & nfips==1) {
    #url.open(myurl)
    utils::browseURL(myurl)
  }

  return(myurl)
}
