#' Random WKT linestring
#'
#' @export
#' @param count (integer/numeric) number of Polygons. Default: 1
#' @param num_vertices (integer/numeric) how many coordinates each polygon will
#'   contain. Default: 10
#' @param max_length (integer/numeric) maximum number of decimal degrees (1
#'   degree = approximately 69 miles or 111 km) that a vertex can be from its
#'   predecessor. Default: 0.0001
#' @param max_rotation (integer/numeric) the maximum number of radians that a
#'   line segment can turn from the previous segment. Default: pi / 8
#' @param bbox (integer/numeric) lat/long bounding box for the starting point of
#'   the line, numeric vector of the form \code{west (long), south (lat), east
#'   (long), north (lat)}. optional
#' @param fmt (integer/numeric) number of digits. Default: 7
#' @return WKT; a character vector with one or more LINESTRING strings
#' @examples
#' wkt_linestring()
#' wkt_linestring(10)
#' wkt_linestring(num_vertices = 4)
#' wkt_linestring(bbox = c(50, 50, 60, 60))
wkt_linestring <- function(count = 1, num_vertices = 10, max_length = 0.0001,
                           max_rotation = pi / 8, bbox = NULL, fmt = 7) {
  assert(fmt, c('numeric', 'integer'))
  res <- geo_linestring(count, num_vertices, max_length, max_rotation, bbox)
  unlist(
    lapply(res$features, function(z)
      to_wkt_linestring(z$geometry$coordinates[[1]], fmt))
  )
}
