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
#' @return GeoJSON; a list with one ore more Polygons in a FeatureCollection
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

  features <- list()
  for (i in seq_len(count)) {
    vertices <- list()
    circle_offsets <- stats::runif(num_vertices)
    circle_offsets <- cumsum(circle_offsets)
    vertices <- lapply(circle_offsets, scale_offsets,
                       circle_offsets, max_radial_length)

    # close the ring
    vertices <- c(vertices, vertices[1])

    # center the polygon around something
    vertices <- Map(vertex_to_coordinate(position(bbox)), vertices)
    features[[i]] <- feature(polygon(vertices))
  }
  fc(features)
}

scale_offsets <- function(x, circle_offsets, max_radial_length) {
  x <- (x * 2 * pi) / circle_offsets[length(circle_offsets)]
  radial_scaler <- stats::runif(1)
  c(
    radial_scaler * max_radial_length * sin(x),
    radial_scaler * max_radial_length * cos(x)
  )
}

vertex_to_coordinate <- function(hub) {
  function(cur, index) c(cur[1] + hub[1], cur[2] + hub[2])
}
