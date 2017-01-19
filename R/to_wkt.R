to_wkt_pt <- function(x, fmt) {
  sprintf(
    "POINT (%s)",
    paste0(format(x, nsmall = fmt, trim = TRUE), collapse = " ")
  )
}

to_wkt_poly <- function(x, fmt) {
  sprintf(
    "POLYGON ((%s))",
    paste0(vapply(x, function(z) paste0(format(z, nsmall = fmt, trim = TRUE), collapse = " "), ""), collapse = ", ")
  )
}
