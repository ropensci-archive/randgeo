#' Random point
#'
#' @export
#' @param count (integer/numeric) number of Polygons. Default: 1
#' @param bbox (integer/numeric) bounding box, numeric vector of the form
#' \code{west, south, east, north}. optional
#' @return GeoJSON; a list with one ore more Points in a FeatureCollection
#' @examples
#' rg_point()
#' rg_point(10)
#' rg_point(bbox = c(50, 50, 60, 60))
rg_point <- function(count = 1, bbox = NULL) {
  features <- list()
  for (i in seq_len(count)) {
    features[[i]] <- feature(
      if (!is.null(bbox)) point(position(bbox)) else point()
    )
  }
  fc(features)
}
