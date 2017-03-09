randgeo: random WKT and GeoJSON
===============================



[![Build Status](https://travis-ci.org/ropensci/randgeo.svg?branch=master)](https://travis-ci.org/ropensci/randgeo)
[![codecov.io](https://codecov.io/github/ropensci/randgeo/coverage.svg?branch=master)](https://codecov.io/github/ropensci/randgeo?branch=master)
[![rstudio mirror downloads](http://cranlogs.r-pkg.org/badges/randgeo?color=C9A115)](https://github.com/metacran/cranlogs.app)
[![cran version](http://www.r-pkg.org/badges/version/randgeo)](https://cran.r-project.org/package=randgeo)

**randgeo** generates random points and shapes in GeoJSON and WKT formats for use
in examples, teaching, or statistical applications.

Points and shapes are generated in the long/lat coordinate system and with
appropriate spherical geometry; random points are distributed evenly across
the globe, and random shapes are sized according to a maximum great-circle
distance from the center of the shape. 

**randgeo** was adapted from <https://github.com/tmcw/geojson-random> to have a pure R
implementation without any dependencies as well as appropriate geometry. Data generated
by **randgeo** may be processed or displayed of with packages such as
[**sf**](https://cran.r-project.org/package=sf),
[**wicket**](https://cran.r-project.org/package=wicket),
[**geojson**](https://cran.r-project.org/package=geojson),
[**wellknown**](https://cran.r-project.org/package=wellknown),
[**geojsonio**](https://cran.r-project.org/package=geojsonio), or
[**lawn**](https://cran.r-project.org/package=lawn).

Package API:

* `rg_position` - random position (lon, lat)
* `geo_point` - random GeoJSON point
* `geo_polygon` - random GeoJSON polygon
* `wkt_point` - random WKT point
* `wkt_polygon` - random WKT polygon

## Docs

<https://ropensci.github.io/randgeo/>

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

## Generate a random position


```r
rg_position()
#> [[1]]
#> [1]  -2.016032 -25.598715
```

## Genrate random GeoJSON

Random point - evenly distributed across the sphere.  The `bbox` option allows
you to limit points to within long/lat bounds.


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
#> [1] -28.022568   4.234356
#> 
#> 
#> $features[[1]]$properties
#> list()
#> 
#> 
#> 
#> attr(,"class")
#> [1] "geo_list"
```

Random polygon - centered on a random point, with default maximum size


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
#> [1] 89.586114  4.459564
#> 
#> $features[[1]]$geometry$coordinates[[1]][[2]]
#> [1] 93.2320981  0.7372066
#> 
#> $features[[1]]$geometry$coordinates[[1]][[3]]
#> [1] 87.348512 -4.829574
#> 
#> $features[[1]]$geometry$coordinates[[1]][[4]]
#> [1]  83.52545 -10.39727
#> 
#> $features[[1]]$geometry$coordinates[[1]][[5]]
#> [1] 83.575987 -3.642733
#> 
#> $features[[1]]$geometry$coordinates[[1]][[6]]
#> [1] 78.162213 -3.361443
#> 
#> $features[[1]]$geometry$coordinates[[1]][[7]]
#> [1] 78.596636 -2.538331
#> 
#> $features[[1]]$geometry$coordinates[[1]][[8]]
#> [1] 79.5894980  0.3928955
#> 
#> $features[[1]]$geometry$coordinates[[1]][[9]]
#> [1] 85.1453525 -0.9008309
#> 
#> $features[[1]]$geometry$coordinates[[1]][[10]]
#> [1] 84.223380  3.608359
#> 
#> $features[[1]]$geometry$coordinates[[1]][[11]]
#> [1] 89.586114  4.459564
#> 
#> 
#> 
#> 
#> $features[[1]]$properties
#> list()
#> 
#> 
#> 
#> attr(,"class")
#> [1] "geo_list"
```

Visualize your shapes with **lawn**.


```r
lawn::view(jsonlite::toJSON(geo_polygon(count = 4), auto_unbox = TRUE))
```

![map](inst/img/plot.png)


## Generate random WKT

Random point


```r
wkt_point()
#> [1] "POINT (-83.8526705 -10.2530421)"
```

Random polygon


```r
wkt_polygon()
#> [1] "POLYGON ((-42.6568552 13.7532933, -35.1426362 18.2858412, -35.3604405 7.8659975, -41.3825862 10.6372332, -41.5181338 2.7310015, -43.8718184 9.9846496, -44.8487826 9.0094509, -46.1718704 9.9172417, -49.4804921 16.7181997, -44.4215407 15.5379150, -42.6568552 13.7532933))"
```

## Meta

* Please [report any issues or bugs](https://github.com/ropensci/randgeo/issues).
* License: MIT
* Get citation information for `randgeo` in R doing `citation(package = 'randgeo')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.

[![rofooter](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
