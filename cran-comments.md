## Test environments

* local OS X install, R 3.5.0
* ubuntu 12.04 (on travis-ci), R 3.5.0
* win-builder (devel and release)

## R CMD check results

0 errors | 0 warnings | 1 note

  License components with restrictions and base license permitting such:
    MIT + file LICENSE
  File 'LICENSE':
    YEAR: 2018
    COPYRIGHT HOLDER: Scott Chamberlain

## Reverse dependencies

There are no reverse dependencies.

---

This version adds two new functions `geo_linestring` and `wkt_linestring` 
to make randgeom linestrings as geojson or wkt, respectively. Also fixes 
placement of images used in readme.

Thanks!
Scott Chamberlain
