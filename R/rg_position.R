#' Random position
#'
#' @export
#' @param bbox (integer/numeric) bounding box, numeric vector of the form
#' \code{west, south, east, north}. optional
#' @return numeric vector of long, lat
#' @examples
#' rg_position()
#' rg_position(bbox = c(50, 50, 60, 60))
rg_position <- function(bbox = NULL) position(bbox)
