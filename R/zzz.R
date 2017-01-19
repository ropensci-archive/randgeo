`%||%` <- function(x, y) if (is.null(x) || length(x) == 0) y else x

coord_in_bbbox <- function(bbox) {
  c(
    (stats::runif(1) * (bbox[3] - bbox[1])) + bbox[1],
    (stats::runif(1) * (bbox[4] - bbox[2])) + bbox[2]
  )
}

position <- function(bbox = NULL) {
  if (!is.null(bbox)) {
    coord_in_bbbox(bbox)
  } else {
    c(lon(), lat())
  }
}

rnd <- function() stats::runif(1) - 0.5
lon <- function() rnd() * 360
lat <- function() rnd() * 180

point <- function(x = NULL) {
  list(
    type = 'Point',
    coordinates = x %||% c(lon(), lat())
  )
}

polygon <- function(x) {
  list(
    type = 'Polygon',
    coordinates = list(x)
  )
}

feature <- function(x) {
  list(
    type = 'Feature',
    geometry = x,
    properties = list()
  )
}

fc <- function(x) {
  list(
    type = 'FeatureCollection',
    features = x
  )
}

assert <- function(x, y) {
  if (!is.null(x)) {
    if (!class(x) %in% y) {
      stop(deparse(substitute(x)), " must be of class ",
           paste0(y, collapse = ", "), call. = FALSE)
    }
  }
}
