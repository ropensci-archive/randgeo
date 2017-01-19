randgeo
=======



`rangeo` - random WKT or GeoJSON

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
#> [1] -83.99849  76.49700
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
#> [1]  7.1722073 -0.6132885
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
#> [1] -48.20348 -57.19427
#> 
#> $features[[1]]$geometry$coordinates[[1]][[2]]
#> [1] -42.16830 -54.12803
#> 
#> $features[[1]]$geometry$coordinates[[1]][[3]]
#> [1] -47.59785 -58.22628
#> 
#> $features[[1]]$geometry$coordinates[[1]][[4]]
#> [1] -40.78863 -61.81966
#> 
#> $features[[1]]$geometry$coordinates[[1]][[5]]
#> [1] -50.89416 -63.81652
#> 
#> $features[[1]]$geometry$coordinates[[1]][[6]]
#> [1] -52.07603 -65.96327
#> 
#> $features[[1]]$geometry$coordinates[[1]][[7]]
#> [1] -52.13817 -63.41672
#> 
#> $features[[1]]$geometry$coordinates[[1]][[8]]
#> [1] -57.25586 -54.52116
#> 
#> $features[[1]]$geometry$coordinates[[1]][[9]]
#> [1] -50.05674 -56.74854
#> 
#> $features[[1]]$geometry$coordinates[[1]][[10]]
#> [1] -48.53619 -55.30959
#> 
#> $features[[1]]$geometry$coordinates[[1]][[11]]
#> [1] -48.20348 -57.19427
#> 
#> 
#> 
#> 
#> $features[[1]]$properties
#> list()
```
