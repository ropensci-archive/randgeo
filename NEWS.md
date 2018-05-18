randgeo 0.3.0
=============

### NEW FEATURES

* Gains `geo_linestring` and `wkt_linestring` ([#13](https://github.com/ropensci/randgeo/pull/13)) thanks to @samuelbosch
* All `geo_*` functions output lists - they all gain a S3 class `geo_list` to be in line with `geojsonio` outputs

### MINOR IMPROVEMENTS

* fix placement of image used in readme that's CRAN compliant


randgeo 0.2.0
=============

### NEW FEATURES

All changes thanks to @noamross, and come from (#6) (#7)

Internals of the package are re-worked to have the features:

* Random points are now evenly distributed on the sphere
* Random shape vertex distances from the center are now based on equal-scale 
great-circle arcs
* Everything is in units of degrees latitude (e.g., ~69 miles or 111 km)

### MINOR IMPROVEMENTS

* More tests were added


randgeo 0.1.0
=============

### NEW FEATURES

* Released to CRAN.
