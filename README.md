randgeo
=======



[![Build Status](https://travis-ci.org/ropensci/randgeo.svg?branch=master)](https://travis-ci.org/ropensci/randgeo)

`rangeo` - random WKT or GeoJSON

just GeoJSON right now, working on WKT

adapted from <https://github.com/tmcw/geojson-random> to have a pure R
implementation without any dependencies.

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
#> [1] -152.56385   30.34341
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
#> [1] -126.48853   51.86399
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
#> [1] -102.183  -58.813
#> 
#> $features[[1]]$geometry$coordinates[[1]][[2]]
#> [1] -103.72953  -60.39079
#> 
#> $features[[1]]$geometry$coordinates[[1]][[3]]
#> [1] -103.01104  -62.54423
#> 
#> $features[[1]]$geometry$coordinates[[1]][[4]]
#> [1] -100.72585  -69.29341
#> 
#> $features[[1]]$geometry$coordinates[[1]][[5]]
#> [1] -105.87388  -63.19919
#> 
#> $features[[1]]$geometry$coordinates[[1]][[6]]
#> [1] -112.16821  -63.64918
#> 
#> $features[[1]]$geometry$coordinates[[1]][[7]]
#> [1] -114.31957  -61.06352
#> 
#> $features[[1]]$geometry$coordinates[[1]][[8]]
#> [1] -107.64025  -61.22747
#> 
#> $features[[1]]$geometry$coordinates[[1]][[9]]
#> [1] -106.01861  -62.06435
#> 
#> $features[[1]]$geometry$coordinates[[1]][[10]]
#> [1] -105.69633  -58.61911
#> 
#> $features[[1]]$geometry$coordinates[[1]][[11]]
#> [1] -102.183  -58.813
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
#> [1] "POINT (-110.7657802 59.9259682)"
```

polygon


```r
wkt_polygon()
#> [1] "POLYGON ((-57.0377609 -49.3069262, -62.8430491 -53.9791415, -61.6264202 -54.9181917, -60.5544963 -61.8986754, -66.8273960 -61.7739415, -66.6078966 -54.8738947, -64.6472661 -53.6264914, -72.0712640 -48.6212191, -65.6861037 -51.5927283, -63.6009586 -44.0206311, -57.0377609 -49.3069262))"
```
