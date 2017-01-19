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

## random GeoJSON

position


```r
rg_position()
#> [1] 179.05133  14.33627
```

point


```r
rg_point()
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
#> [1] -154.76061  -36.35823
#> 
#> 
#> $features[[1]]$properties
#> list()
```

polygon


```r
rg_polygon()
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
#> [1] 24.55431 27.93747
#> 
#> $features[[1]]$geometry$coordinates[[1]][[2]]
#> [1] 21.48499 23.25038
#> 
#> $features[[1]]$geometry$coordinates[[1]][[3]]
#> [1] 20.70381 20.98045
#> 
#> $features[[1]]$geometry$coordinates[[1]][[4]]
#> [1] 14.84836 15.33931
#> 
#> $features[[1]]$geometry$coordinates[[1]][[5]]
#> [1] 15.88339 23.99485
#> 
#> $features[[1]]$geometry$coordinates[[1]][[6]]
#> [1]  8.732041 17.877866
#> 
#> $features[[1]]$geometry$coordinates[[1]][[7]]
#> [1] 14.62389 24.77293
#> 
#> $features[[1]]$geometry$coordinates[[1]][[8]]
#> [1] 14.27064 25.50285
#> 
#> $features[[1]]$geometry$coordinates[[1]][[9]]
#> [1] 12.18091 27.92743
#> 
#> $features[[1]]$geometry$coordinates[[1]][[10]]
#> [1] 16.17883 27.54296
#> 
#> $features[[1]]$geometry$coordinates[[1]][[11]]
#> [1] 24.55431 27.93747
#> 
#> 
#> 
#> 
#> $features[[1]]$properties
#> list()
```

visualize


```r
lawn::view(jsonlite::toJSON(rg_polygon(count = 4), auto_unbox = TRUE))
```

![map](inst/img/plot.png)

