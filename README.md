# countyhealthrankings package 

## The [countyhealthrankings package](http://ejanalysis.github.io/countyhealthrankings/) was developed as a way to give R users easier access to the excellent data at [countyhealthrankings.org](http://www.countyhealthrankings.org).

This package provides their 2014 - 2019 datasets, imported to R as a data.frame, to facilitate use of the data in R. Source of original data is documented here: [countyhealthrankings.org/about-project](http://www.countyhealthrankings.org/about-project)

Key functions/uses include data(countyhealth19) to obtain a dataset of health indicators for US Counties, and urls.countyhealthrankings() to get URLs for US County health indicator reports.

## Installation

This package is not on CRAN yet, but you can install it from Github:

```r
if (!require('devtools')) install.packages('devtools')
devtools::install_github('ejanalysis/countyhealthrankings')
```

## Documentation

In addition to documentation in the package, the help in pdf format is here:
[http://ejanalysis.github.io/countyhealthrankings/countyhealthrankings.pdf](http://ejanalysis.github.io/countyhealthrankings/countyhealthrankings.pdf)

## Related Packages

This package is one of a series of [R packages related to environmental justice (EJ) analysis](http://ejanalysis.github.io/), as part of [ejanalysis.com](http://www.ejanalysis.com).  

This and related packages, once each is made available as a public repository on GitHub, until available on cran, can be installed using the devtools package: 

```r
if (!require('devtools')) install.packages('devtools')
devtools::install_github("ejanalysis/analyze.stuff")  
devtools::install_github("ejanalysis/countyhealthrankings")  
devtools::install_github("ejanalysis/UScensus2010blocks")  
devtools::install_github("ejanalysis/ACSdownload")  
devtools::install_github(c("ejanalysis/proxistat", "ejanalysis/ejanalysis"))
devtools::install_github("ejanalysis/ejscreen")
```
