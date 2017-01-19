randgeo
=======



[![Build Status](https://travis-ci.org/ropensci/randgeo.svg?branch=master)](https://travis-ci.org/ropensci/randgeo)

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


```r
devtools::install_github("ropensci/randgeo")
```


```r
library("randgeo")
```

## random position


```r
rg_position()
#> [1]   9.644503 -27.715903
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
#> [1] -4.265973 87.347850
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
#> [1] 178.78343  80.10305
#> 
#> $features[[1]]$geometry$coordinates[[1]][[2]]
#> [1] 180.32300  79.67496
#> 
#> $features[[1]]$geometry$coordinates[[1]][[3]]
#> [1] 179.98934  78.75234
#> 
#> $features[[1]]$geometry$coordinates[[1]][[4]]
#> [1] 182.35137  73.44748
#> 
#> $features[[1]]$geometry$coordinates[[1]][[5]]
#> [1] 176.11500  71.89217
#> 
#> $features[[1]]$geometry$coordinates[[1]][[6]]
#> [1] 175.38772  76.80382
#> 
#> $features[[1]]$geometry$coordinates[[1]][[7]]
#> [1] 176.46482  79.28137
#> 
#> $features[[1]]$geometry$coordinates[[1]][[8]]
#> [1] 172.43525  85.17413
#> 
#> $features[[1]]$geometry$coordinates[[1]][[9]]
#> [1] 178.02214  81.81016
#> 
#> $features[[1]]$geometry$coordinates[[1]][[10]]
#> [1] 178.32139  89.14823
#> 
#> $features[[1]]$geometry$coordinates[[1]][[11]]
#> [1] 178.78343  80.10305
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
#> [1] "POINT (100.6199625 30.2035957)"
```

polygon


```r
wkt_polygon()
#> [1] "POLYGON ((132.7186455 25.0592482, 133.9164730 18.2023618, 131.7386173 16.9931903, 126.3648560 20.1407658, 127.0359810 20.9430804, 119.8914226 19.3559769, 124.5652773 21.1502025, 126.8898829 26.8302855, 127.8522344 23.0016881, 128.2104103 30.7394980, 132.7186455 25.0592482))"
```
