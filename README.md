randgeo
=======



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
#> [1] 169.91156  73.14973
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
#> [1] 115.61061 -88.96544
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
#> [1] 92.04712 37.68487
#> 
#> $features[[1]]$geometry$coordinates[[1]][[2]]
#> [1] 94.01917 34.92797
#> 
#> $features[[1]]$geometry$coordinates[[1]][[3]]
#> [1] 97.53181 27.52851
#> 
#> $features[[1]]$geometry$coordinates[[1]][[4]]
#> [1] 91.54321 32.70985
#> 
#> $features[[1]]$geometry$coordinates[[1]][[5]]
#> [1] 92.24888 29.80319
#> 
#> $features[[1]]$geometry$coordinates[[1]][[6]]
#> [1] 89.66576 27.96953
#> 
#> $features[[1]]$geometry$coordinates[[1]][[7]]
#> [1] 86.62088 27.04295
#> 
#> $features[[1]]$geometry$coordinates[[1]][[8]]
#> [1] 85.82624 33.20216
#> 
#> $features[[1]]$geometry$coordinates[[1]][[9]]
#> [1] 87.41339 35.53933
#> 
#> $features[[1]]$geometry$coordinates[[1]][[10]]
#> [1] 91.18717 40.20176
#> 
#> $features[[1]]$geometry$coordinates[[1]][[11]]
#> [1] 92.04712 37.68487
#> 
#> 
#> 
#> 
#> $features[[1]]$properties
#> list()
```
