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
[**geojsonio**](https://cran.r-project.org/package=geojsonio), or
[**lawn**](https://cran.r-project.org/package=lawn).

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

## Generate a random position


```r
rg_position()
#> [[1]]
#> [1] -112.72244   34.83723
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
#> [1] 150.64720  60.07958
#> 
#> 
#> $features[[1]]$properties
#> list()
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
#> [1] -114.75971   66.18179
#> 
#> $features[[1]]$geometry$coordinates[[1]][[2]]
#> [1] -107.42522   70.25397
#> 
#> $features[[1]]$geometry$coordinates[[1]][[3]]
#> [1] -100.83431   71.09052
#> 
#> $features[[1]]$geometry$coordinates[[1]][[4]]
#> [1] -103.06471   67.91556
#> 
#> $features[[1]]$geometry$coordinates[[1]][[5]]
#> [1] -99.24931  68.39487
#> 
#> $features[[1]]$geometry$coordinates[[1]][[6]]
#> [1] -104.20879   65.63556
#> 
#> $features[[1]]$geometry$coordinates[[1]][[7]]
#> [1] -116.94647   64.15155
#> 
#> $features[[1]]$geometry$coordinates[[1]][[8]]
#> [1] -117.96553   64.80713
#> 
#> $features[[1]]$geometry$coordinates[[1]][[9]]
#> [1] -124.72185   65.40164
#> 
#> $features[[1]]$geometry$coordinates[[1]][[10]]
#> [1] -116.10477   65.52092
#> 
#> $features[[1]]$geometry$coordinates[[1]][[11]]
#> [1] -114.75971   66.18179
#> 
#> 
#> 
#> 
#> $features[[1]]$properties
#> list()
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
#> [1] "POINT (-12.2853061 -54.2639530)"
```

Random polygon


```r
wkt_polygon()
#> [1] "POLYGON ((-117.2008253 -21.0078697, -113.8077098 -28.8466204, -116.5085597 -29.4638262, -118.1729898 -29.6533777, -119.9599728 -29.4791262, -123.4375120 -35.4295879, -121.2274544 -28.6658319, -121.6890946 -28.0213506, -128.8640555 -28.0789419, -120.0106419 -27.7648403, -117.2008253 -21.0078697))"
```

## Meta

* Please [report any issues or bugs](https://github.com/ropensci/randgeo/issues).
* License: MIT
* Get citation information for `randgeo` in R doing `citation(package = 'randgeo')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.

[![rofooter](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
