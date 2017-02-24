#' Random GeoJSON point
#'
#' @export
#' @param count (integer/numeric) number of points. Default: 1
#' @param bbox (integer/numeric) lat/long bounding box from which to generate
#' positions; numeric vector of the form
#' \code{west (long), south (lat), east (long), north (lat)}. optional
#' @return GeoJSON; a list with one ore more Points in a FeatureCollection
#' @examples
#' geo_point()
#' geo_point(10)
#' geo_point(bbox = c(50, 50, 60, 60))
geo_point <- function(count = 1, bbox = NULL) {
  assert(count, c('numeric', 'integer'))
  assert(bbox, c('numeric', 'integer'))
  if (!is.null(bbox)) stopifnot(length(bbox) == 4)

  features <- list()
  for (i in seq_len(count)) {
    features[[i]] <- feature(
      if (!is.null(bbox)) point(position(bbox)) else point()
    )
  }
  fc(features)
}
