randgeo
=======



[![Build Status](https://travis-ci.org/ropensci/randgeo.svg?branch=master)](https://travis-ci.org/ropensci/randgeo)
[![codecov.io](https://codecov.io/github/ropensci/randgeo/coverage.svg?branch=master)](https://codecov.io/github/ropensci/randgeo?branch=master)
[![rstudio mirror downloads](http://cranlogs.r-pkg.org/badges/randgeo?color=C9A115)](https://github.com/metacran/cranlogs.app)
[![cran version](http://www.r-pkg.org/badges/version/randgeo)](https://cran.r-project.org/package=randgeo)

`rangeo` - random WKT or GeoJSON

adapted from <https://github.com/tmcw/geojson-random> to have a pure R
implementation without any dependencies.

Package API:

* `rg_position` - random position
* `geo_point` - random GeoJSON point
* `geo_polygon` - random GeoJSON polygon
* `wkt_point` - random WKT point
* `wkt_polygon` - random WKT polygon

## Install

Stabler CRAN version


```r
install.packages("randgeo")
```

Development version


```r
devtools::install_github("ropensci/randgeo")
```


```r
library("randgeo")
```

## random position


```r
rg_position()
#> [[1]]
#> [1] -60.99727 -17.67208
```

## random GeoJSON

point


```r
geo_point()
#> $type
#> [1] "FeatureCollection"
#> 
#> $features
#> $features[[1]]
#> $features[[1]]$type
#> [1] "Feature"
#> 
#> $features[[1]]$geometry
#> $features[[1]]$geometry$type
#> [1] "Point"
#> 
#> $features[[1]]$geometry$coordinates
#> [1] -158.42574  -42.74468
#> 
#> 
#> $features[[1]]$properties
#> list()
```

polygon


```r
geo_polygon()
#> $type
#> [1] "FeatureCollection"
#> 
#> $features
#> $features[[1]]
#> $features[[1]]$type
#> [1] "Feature"
#> 
#> $features[[1]]$geometry
#> $features[[1]]$geometry$type
#> [1] "Polygon"
#> 
#> $features[[1]]$geometry$coordinates
#> $features[[1]]$geometry$coordinates[[1]]
#> $features[[1]]$geometry$coordinates[[1]][[1]]
#> [1] 160.35517  72.95089
#> 
#> $features[[1]]$geometry$coordinates[[1]][[2]]
#> [1] 164.60923  74.56425
#> 
#> $features[[1]]$geometry$coordinates[[1]][[3]]
#> [1] 160.00658  72.16615
#> 
#> $features[[1]]$geometry$coordinates[[1]][[4]]
#> [1] 167.4745  73.8971
#> 
#> $features[[1]]$geometry$coordinates[[1]][[5]]
#> [1] -179.07399   73.78682
#> 
#> $features[[1]]$geometry$coordinates[[1]][[6]]
#> [1] 179.38836  69.61161
#> 
#> $features[[1]]$geometry$coordinates[[1]][[7]]
#> [1] 165.29475  71.08091
#> 
#> $features[[1]]$geometry$coordinates[[1]][[8]]
#> [1] 144.26124  64.58493
#> 
#> $features[[1]]$geometry$coordinates[[1]][[9]]
#> [1] 158.95471  71.87775
#> 
#> $features[[1]]$geometry$coordinates[[1]][[10]]
#> [1] 155.71951  74.30541
#> 
#> $features[[1]]$geometry$coordinates[[1]][[11]]
#> [1] 160.35517  72.95089
#> 
#> 
#> 
#> 
#> $features[[1]]$properties
#> list()
```

visualize


```r
lawn::view(jsonlite::toJSON(geo_polygon(count = 4), auto_unbox = TRUE))
```

![map](inst/img/plot.png)


## random WKT

point


```r
wkt_point()
#> [1] "POINT (-20.0155081 -14.7482874)"
```

polygon


```r
wkt_polygon()
#> [1] "POLYGON ((-112.4009176 17.1798778, -106.3876922 17.6107603, -107.3491035 7.1251803, -111.1108246 11.6772536, -107.5070658 5.2593379, -112.5562679 12.9757496, -118.4648956 13.7521589, -116.4839306 18.1692495, -116.2859821 20.2412508, -112.8601892 14.2883748, -112.4009176 17.1798778))"
```

## Meta

* Please [report any issues or bugs](https://github.com/ropensci/randgeo/issues).
* License: MIT
* Get citation information for `randgeo` in R doing `citation(package = 'randgeo')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.

[![rofooter](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
