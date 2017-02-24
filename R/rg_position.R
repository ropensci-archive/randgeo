#' Random position
#'
#' @export
#' @param count (integer/numeric) number of positions. Default: 1
#' @param bbox (integer/numeric) lat/long bounding box from which to generate
#' positions; numeric vector of the form
#' \code{west (long), south (lat), east (long), north (lat)}. optional
#' @return A list, each element is a numeric vector length two of long, lat
#' @examples
#' rg_position()
#' rg_position(10)
#' rg_position(100)
#' rg_position(bbox = c(50, 50, 60, 60))
#'
#' # coerce to data.frame
#' stats::setNames(
#'   do.call("rbind.data.frame", rg_position(10)),
#'   c('lng', 'lat')
#' )
rg_position <- function(count = 1, bbox = NULL) {
  assert(count, c('numeric', 'integer'))
  assert(bbox, c('numeric', 'integer'))
  if (!is.null(bbox)) stopifnot(length(bbox) == 4)

  res <- list()
  for (i in seq_len(count)) {
    res[[i]] <- position(bbox)
  }
  return(res)
}
