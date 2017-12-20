#' Random GeoJSON polygon
#'
#' @export
#' @param count (integer/numeric) number of Polygons. Default: 1
#' @param num_vertices (integer/numeric) how many coordinates each
#' polygon will contain. Default: 10
#' @param max_radial_length (integer/numeric) maximum distance that a vertex
#' can reach out of the center of the polygon. Units are in degrees latitude
#' (Approximately 69 miles or 111 km). Default: 10
#' @param bbox (integer/numeric) lat/long bounding box for the centers of the
#' polygons, numeric vector of the form
#' \code{west (long), south (lat), east (long), north (lat)}. optional
#' @return GeoJSON; a list with one ore more Polygons in a FeatureCollection,
#' with class \code{geo_list} - simple \code{unclass()} to remove the class
#' @examples
#' geo_polygon()
#' geo_polygon(10)
#' geo_polygon(bbox = c(50, 50, 60, 60))
geo_polygon <- function(count = 1, num_vertices = 10, max_radial_length = 10,
                       bbox = NULL) {
  assert(count, c('numeric', 'integer'))
  assert(num_vertices, c('numeric', 'integer'))
  assert(max_radial_length, c('numeric', 'integer'))
  assert(bbox, c('numeric', 'integer'))
  if (!is.null(bbox)) stopifnot(length(bbox) == 4)

  features <- list()
  for (i in seq_len(count)) {
    hub <- position(bbox)
    vertices <- list()
    circle_distances <- stats::runif(num_vertices) * max_radial_length
    circle_bearings <- sort(stats::runif(num_vertices) * 2 * pi)
    vertices <- mapply(destination,
                       distance = circle_distances,
                       bearing = circle_bearings,
                       MoreArgs = list(origin = hub),
                       SIMPLIFY = FALSE)

    # close the ring
    vertices <- c(vertices, vertices[1])

    features[[i]] <- feature(polygon(vertices))
  }
  structure(fc(features), class = "geo_list")
}
