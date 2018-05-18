randgeo: random WKT and GeoJSON
===============================



[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![cran checks](https://cranchecks.info/badges/worst/randgeo)](https://cranchecks.info/pkgs/randgeo)
[![Build Status](https://travis-ci.org/ropensci/randgeo.svg?branch=master)](https://travis-ci.org/ropensci/randgeo)
[![codecov.io](https://codecov.io/github/ropensci/randgeo/coverage.svg?branch=master)](https://codecov.io/github/ropensci/randgeo?branch=master)
[![rstudio mirror downloads](https://cranlogs.r-pkg.org/badges/randgeo?color=C9A115)](https://github.com/metacran/cranlogs.app)
[![cran version](https://www.r-pkg.org/badges/version/randgeo)](https://cran.r-project.org/package=randgeo)

**randgeo** generates random points and shapes in GeoJSON and WKT formats for use
in examples, teaching, or statistical applications.

Points and shapes are generated in the long/lat coordinate system and with
appropriate spherical geometry; random points are distributed evenly across
the globe, and random shapes are sized according to a maximum great-circle
distance from the center of the shape. 

**randgeo** was adapted from <https://github.com/tmcw/geojson-random> to have a pure R
implementation __without any dependencies__ as well as appropriate geometry. Data generated
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
* `geo_linestring` - random GeoJSON linestring
* `geo_polygon` - random GeoJSON polygon
* `wkt_point` - random WKT point
* `wkt_linestring` - random WKT linestring
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
#> [1] 149.33018 -60.94463
```

## Generate random GeoJSON

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
#> [1] -76.98977 -41.36819
#> 
#> 
#> $features[[1]]$properties
#> NULL
#> 
#> 
#> 
#> attr(,"class")
#> [1] "geo_list"
```

Random linestring - starting from a random point, with default maximum segment
length and maximum rotation between two segments.


```r
geo_linestring()
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
#> [1] "LineString"
#> 
#> $features[[1]]$geometry$coordinates
#> $features[[1]]$geometry$coordinates[[1]]
#> $features[[1]]$geometry$coordinates[[1]][[1]]
#> [1] 51.028387 -2.188767
#> 
#> $features[[1]]$geometry$coordinates[[1]][[2]]
#> [1] 51.027774 -2.189005
#> 
#> $features[[1]]$geometry$coordinates[[1]][[3]]
#> [1] 51.028109 -2.189318
#> 
#> $features[[1]]$geometry$coordinates[[1]][[4]]
#> [1] 51.027487 -2.190017
#> 
#> $features[[1]]$geometry$coordinates[[1]][[5]]
#> [1] 51.027774 -2.190379
#> 
#> $features[[1]]$geometry$coordinates[[1]][[6]]
#> [1] 51.027088 -2.191078
#> 
#> $features[[1]]$geometry$coordinates[[1]][[7]]
#> [1] 51.027435 -2.191403
#> 
#> $features[[1]]$geometry$coordinates[[1]][[8]]
#> [1] 51.026922 -2.192147
#> 
#> $features[[1]]$geometry$coordinates[[1]][[9]]
#> [1] 51.027533 -2.192925
#> 
#> $features[[1]]$geometry$coordinates[[1]][[10]]
#> [1] 51.027475 -2.192984
#> 
#> 
#> 
#> 
#> $features[[1]]$properties
#> NULL
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
#> [1]  7.375542 21.481953
#> 
#> $features[[1]]$geometry$coordinates[[1]][[2]]
#> [1]  9.557249 13.822460
#> 
#> $features[[1]]$geometry$coordinates[[1]][[3]]
#> [1] 10.882944  6.553386
#> 
#> $features[[1]]$geometry$coordinates[[1]][[4]]
#> [1] 8.192794 5.962077
#> 
#> $features[[1]]$geometry$coordinates[[1]][[5]]
#> [1] 8.305398 5.210405
#> 
#> $features[[1]]$geometry$coordinates[[1]][[6]]
#> [1] 2.573744 9.711262
#> 
#> $features[[1]]$geometry$coordinates[[1]][[7]]
#> [1]  0.4559409 17.8573283
#> 
#> $features[[1]]$geometry$coordinates[[1]][[8]]
#> [1]  5.093829 12.718010
#> 
#> $features[[1]]$geometry$coordinates[[1]][[9]]
#> [1]  2.778335 20.708271
#> 
#> $features[[1]]$geometry$coordinates[[1]][[10]]
#> [1]  5.103798 12.757463
#> 
#> $features[[1]]$geometry$coordinates[[1]][[11]]
#> [1]  7.375542 21.481953
#> 
#> 
#> 
#> 
#> $features[[1]]$properties
#> NULL
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

![map](https://github.com/ropensci/randgeo/raw/master/tools/plot.png)


## Generate random WKT

Random point


```r
wkt_point()
#> [1] "POINT (50.3923570 -70.3787919)"
```

Random linestring


```r
wkt_linestring()
#> [1] "LINESTRING (42.7817546 19.4598109, 42.7818265 19.4597713, 42.7819039 19.4597543, 42.7819206 19.4597476, 42.7819732 19.4597341, 42.7820674 19.4596920, 42.7821133 19.4596554, 42.7821233 19.4596390, 42.7821761 19.4595728, 42.7821867 19.4595509)"
```

Random polygon


```r
wkt_polygon()
#> [1] "POLYGON ((-164.5191674 48.1392788, -160.7019535 50.0321237, -162.9547961 47.6318361, -154.1477728 46.2428280, -164.4173904 45.9485672, -160.5131717 43.5274697, -167.1833639 41.2046996, -164.5419419 45.9658491, -171.4209181 42.8764619, -166.7761058 46.2084577, -164.5191674 48.1392788))"
```

## Contributors

* Scott Chamberlain
* Noam Ross
* Samuel Bosch

## Meta

* Please [report any issues or bugs](https://github.com/ropensci/randgeo/issues).
* License: MIT
* Get citation information for `randgeo` in R doing `citation(package = 'randgeo')`
* Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.

[![rofooter](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
