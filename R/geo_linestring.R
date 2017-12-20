#' Random GeoJSON linestring
#'
#' @export
#' @param count (integer/numeric) number of Polygons. Default: 1
#' @param num_vertices (integer/numeric) how many coordinates each polygon will
#'   contain. Default: 10
#' @param max_length (integer/numeric) maximum distance that a vertex can be
#'   from its predecessor. Units are in degrees latitude (Approximately 69 miles
#'   or 111 km). Default: 0.001 (approximately 121 yards or 111 meters)
#' @param max_rotation (integer/numeric) the maximum number of radians that a
#'   line segment can turn from the previous segment. Default: pi / 8
#' @param bbox (integer/numeric) lat/long bounding box for the starting point of
#'   the line, numeric vector of the form \code{west (long), south (lat), east
#'   (long), north (lat)}. optional
#' @return GeoJSON; a list with one ore more Linestrings in a FeatureCollection,
#'   with class \code{geo_list} - simple \code{unclass()} to remove the class
#' @examples
#' geo_linestring()
#' geo_linestring(10)
#' geo_linestring(bbox = c(50, 50, 60, 60))
geo_linestring <- function(count = 1, num_vertices = 10, max_length = 0.001,
                           max_rotation = pi / 8, bbox = NULL) {
  assert(count, c('numeric', 'integer'))
  assert(num_vertices, c('numeric', 'integer'))
  assert(max_length, c('numeric', 'integer'))
  assert(max_rotation, c('numeric', 'integer'))
  assert(bbox, c('numeric', 'integer'))
  if (!is.null(bbox)) stopifnot(length(bbox) == 4)

  features <- list()
  for (i in seq_len(count)) {
    start <- position(bbox)
    vertices <- list(start)
    prior_bearing <- stats::runif(1) * 2 * pi

    for(j in seq_len(num_vertices-1)) {
      bearing <- prior_bearing + stats::runif(1, -0.5, 0.5) * max_rotation * 2
      distance <- stats::runif(1, max = max_length)
      vertices[[j+1]] <- destination(vertices[[j]], distance, bearing)
      prior_bearing <- final_bearing(vertices[[j]], vertices[[j+1]])
    }
    features[[i]] <- feature(linestring(vertices))
  }
  structure(fc(features), class = "geo_list")
}

# from http://www.movable-type.co.uk/scripts/latlong.html
initial_bearing <- function(start, end) {
  lat1 <- start[2]
  lat2 <- end[2]
  deltalon <- end[1]-start[1]
  y <- sin(deltalon) * cos(lat2)
  x <- cos(lat1) * sin(lat2) - sin(lat1) * cos(lat2) * cos(deltalon)
  atan2(y, x)
}

final_bearing <- function(start, end) {
  bearing <- initial_bearing(end, start)
  (bearing + pi) %% (2*pi)
}
