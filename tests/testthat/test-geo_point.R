context("geo_point")

test_that("geo_point works", {
  skip_on_cran()

  aa <- geo_point()

  expect_is(aa, "list")
  expect_equal(aa$type, "FeatureCollection")
  expect_is(aa$features, "list")
  expect_is(aa$features[[1]], "list")
  expect_identical(aa$features[[1]]$properties, list())
  expect_equal(aa$features[[1]]$type, "Feature")

  expect_is(aa$features[[1]]$geometry$coordinates, "numeric")
  expect_type(aa$features[[1]]$geometry$coordinates, "double")
  expect_equal(length(aa$features[[1]]$geometry$coordinates), 2)

  coord <- aa$features[[1]]$geometry$coordinates

  # lng is between -180 and 180
  expect_lte(abs(coord[1]), 180)

  # lat is between -90 and 90
  expect_lte(abs(coord[2]), 90)
})
