**countyhealthrankings** package 

The [countyhealthrankings package](http://ejanalysis.github.io/countyhealthrankings/) was developed as a way to give R users easier access to the excellent data at [countyhealthrankings.org](http://www.countyhealthrankings.org). This package provides their 2014 and 2015 datasets, imported to R as a data.frame, to facilitate use of the data in R. Source of original data is documented here: [countyhealthrankings.org/about-project](http://www.countyhealthrankings.org/about-project) -- Obtained the data 3/27/2015 and slightly modified it to provide 5-digit FIPS as a character field, and State 2-character abbreviation field renamed as ST.

Key functions/uses include data(countyhealth15) to obtain a dataset of health indicators for US Counties, and urls.countyhealthrankings() to get URLs for US County health indicator reports.

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


