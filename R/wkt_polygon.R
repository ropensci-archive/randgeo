#' Random GeoJSON polygon
#'
#' @export
#' @param count (integer/numeric) number of Polygons. Default: 1
#' @param num_vertices (integer/numeric) is default 10 and is how many
#' coordinates each Polygon will contain. Default: 10
#' @param max_radial_length (integer/numeric) maximum number of decimal degrees
#' latitude or longitude that a vertex can reach out of the center of the
#' Polygon. Default: 10
#' @param bbox (integer/numeric) bounding box, numeric vector of the form
#' \code{west, south, east, north}. optional
#' @param fmt (integer/numeric) number of digits. Default: 7
#' @return WKT; a character vector with one or more POLYGON strings
#' @examples
#' wkt_polygon()
#' wkt_polygon(num_vertices = 3)
#' wkt_polygon(num_vertices = 4)
#' wkt_polygon(num_vertices = 100)
#' wkt_polygon(10)
#' wkt_polygon(bbox = c(50, 50, 60, 60))
wkt_polygon <- function(count = 1, num_vertices = 10, max_radial_length = 10,
                        bbox = NULL, fmt = 7) {
  assert(fmt, c('numeric', 'integer'))
  res <- geo_polygon(count, num_vertices, max_radial_length, bbox)
  unlist(
    lapply(res$features, function(z)
      to_wkt_poly(z$geometry$coordinates[[1]], fmt))
  )
}
