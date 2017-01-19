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
#> [1]  16.62869 -69.13550
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
#> [1]  22.38500 -75.36768
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
#> [1] 156.44869  80.12818
#> 
#> $features[[1]]$geometry$coordinates[[1]][[2]]
#> [1] 160.56083  78.67403
#> 
#> $features[[1]]$geometry$coordinates[[1]][[3]]
#> [1] 156.72766  75.52437
#> 
#> $features[[1]]$geometry$coordinates[[1]][[4]]
#> [1] 156.97577  74.01422
#> 
#> $features[[1]]$geometry$coordinates[[1]][[5]]
#> [1] 150.6447  72.0022
#> 
#> $features[[1]]$geometry$coordinates[[1]][[6]]
#> [1] 153.33567  74.80727
#> 
#> $features[[1]]$geometry$coordinates[[1]][[7]]
#> [1] 153.85309  76.23711
#> 
#> $features[[1]]$geometry$coordinates[[1]][[8]]
#> [1] 154.08755  77.21572
#> 
#> $features[[1]]$geometry$coordinates[[1]][[9]]
#> [1] 154.67213  81.92804
#> 
#> $features[[1]]$geometry$coordinates[[1]][[10]]
#> [1] 155.51821  80.71464
#> 
#> $features[[1]]$geometry$coordinates[[1]][[11]]
#> [1] 156.44869  80.12818
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

