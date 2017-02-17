randgeo
=======



[![Build Status](https://travis-ci.org/ropensci/randgeo.svg?branch=master)](https://travis-ci.org/ropensci/randgeo)
[![codecov.io](https://codecov.io/github/ropensci/randgeo/coverage.svg?branch=master)](https://codecov.io/github/ropensci/randgeo?branch=master)

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
#> [1] -15.44412 -38.92475
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
#> [1]  16.47672 -74.05690
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
#> [1] 155.48675  83.14403
#> 
#> $features[[1]]$geometry$coordinates[[1]][[2]]
#> [1] 161.44543  79.63525
#> 
#> $features[[1]]$geometry$coordinates[[1]][[3]]
#> [1] 157.6343  79.8766
#> 
#> $features[[1]]$geometry$coordinates[[1]][[4]]
#> [1] 154.01417  77.26018
#> 
#> $features[[1]]$geometry$coordinates[[1]][[5]]
#> [1] 148.58069  79.78645
#> 
#> $features[[1]]$geometry$coordinates[[1]][[6]]
#> [1] 149.22902  82.59558
#> 
#> $features[[1]]$geometry$coordinates[[1]][[7]]
#> [1] 148.89058  85.07908
#> 
#> $features[[1]]$geometry$coordinates[[1]][[8]]
#> [1] 145.9176  87.6202
#> 
#> $features[[1]]$geometry$coordinates[[1]][[9]]
#> [1] 151.3219  88.6061
#> 
#> $features[[1]]$geometry$coordinates[[1]][[10]]
#> [1] 153.26898  90.73207
#> 
#> $features[[1]]$geometry$coordinates[[1]][[11]]
#> [1] 155.48675  83.14403
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
#> [1] "POINT (-163.2614716 -83.3048749)"
```

polygon


```r
wkt_polygon()
#> [1] "POLYGON ((89.8048585 61.8254312, 88.9329390 60.7697099, 92.5001356 58.0362473, 93.8532175 53.5291327, 88.5455690 59.9501290, 90.1393320 56.1050423, 89.0807555 56.4119115, 82.1906641 60.6291550, 83.4751727 68.4828310, 88.2114607 66.3359247, 89.8048585 61.8254312))"
```

## Meta

* Please [report any issues or bugs](https://github.com/ropensci/randgeo/issues).
* License: MIT
* Get citation information for `randgeo` in R doing `citation(package = 'randgeo')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.

[![rofooter](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
