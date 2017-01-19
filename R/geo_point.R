#' Random GeoJSON point
#'
#' @export
#' @param count (integer/numeric) number of Polygons. Default: 1
#' @param bbox (integer/numeric) bounding box, numeric vector of the form
#' \code{west, south, east, north}. optional
#' @return GeoJSON; a list with one ore more Points in a FeatureCollection
#' @examples
#' geo_point()
#' geo_point(10)
#' geo_point(bbox = c(50, 50, 60, 60))
geo_point <- function(count = 1, bbox = NULL) {
  assert(count, c('numeric', 'integer'))
  assert(bbox, c('numeric', 'integer'))

  features <- list()
  for (i in seq_len(count)) {
    features[[i]] <- feature(
      if (!is.null(bbox)) point(position(bbox)) else point()
    )
  }
  fc(features)
}
