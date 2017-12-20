`%||%` <- function(x, y) if (is.null(x) || length(x) == 0) y else x

# from http://www.geomidpoint.com/random/calculation.html
coord_in_bbbox <- function(bbox) {
  c(
    stats::runif(1) * (bbox[3] - bbox[1]) + bbox[1],
    (180/pi)* asin(
      stats::runif(1) * (sin(bbox[4]*(pi/180)) - sin(bbox[2]*(pi/180))) +
        sin(bbox[2]*(pi/180)))
  )
}

# from http://www.movable-type.co.uk/scripts/latlong.html
destination <- function(origin, distance, bearing) {
  origin <- origin * pi/180
  #angular distance, constant is earth radius in degrees lat distance
  adist <- distance * pi/180
  dest <- numeric(2)
  dest[2] <- asin(sin(origin[2]) * cos(adist) +
                    cos(origin[2]) * sin(adist) * cos(bearing))
  dest[1] <- origin[1] + atan2(sin(bearing) * sin(adist) * cos(origin[2]),
                               cos(adist) - sin(origin[2]) * sin(dest[2]))
  dest <- dest * 180/pi
  dest[1] <- (dest[1] + 540) %% 360 - 180 # normalize to -180 to 180
  return(dest)
}

position <- function(bbox = NULL) {
  if (!is.null(bbox)) {
    coord_in_bbbox(bbox)
  } else {
    c(lon(), lat())
  }
}

lon <- function() (stats::runif(1) - 0.5) * 360
lat <- function() 180 * acos(2*stats::runif(1) - 1)/pi - 90

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

linestring <- function(x) {
  list(
    type = 'LineString',
    coordinates = list(x)
  )
}

feature <- function(x) {
  list(
    type = 'Feature',
    geometry = x,
    properties = c()
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
