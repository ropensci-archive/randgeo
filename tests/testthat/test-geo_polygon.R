context("geo_polygon")

test_that("geo_polygon works", {
  skip_on_cran()

  aa <- geo_polygon()

  expect_is(aa, "list")
  expect_equal(aa$type, "FeatureCollection")
  expect_is(aa$features, "list")
  expect_is(aa$features[[1]], "list")
  expect_identical(aa$features[[1]]$properties, list())
  expect_equal(aa$features[[1]]$type, "Feature")

  expect_is(aa$features[[1]]$geometry$coordinates, "list")
  expect_is(aa$features[[1]]$geometry$coordinates[[1]], "list")

  coord <- aa$features[[1]]$geometry$coordinates[[1]][[1]]

  expect_is(coord, "numeric")
  expect_type(coord, "double")
  expect_equal(length(coord), 2)

  # lng is between -180 and 180
  expect_lte(abs(coord[1]), 180)

  # lat is between -90 and 90
  expect_lte(abs(coord[2]), 90)
})
