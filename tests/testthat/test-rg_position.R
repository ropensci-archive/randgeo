context("rg_position")

test_that("rg_position works", {
  skip_on_cran()

  expect_is(rg_position(), "list")
  expect_is(rg_position()[[1]], "numeric")
  expect_type(rg_position()[[1]], "double")
  expect_equal(length(rg_position()[[1]]), 2)

  # lng is between -180 and 180
  expect_lte(abs(rg_position()[[1]][1]), 180)

  # lat is between -90 and 90
  expect_lte(abs(rg_position()[[1]][2]), 90)

  # count works
  expect_equal(length(rg_position(count = 10)), 10)
})

test_that("rg_position fails well", {
  expect_error(rg_position("Asdfasfd"), "count must be of class")
  expect_error(rg_position(bbox = mtcars), "bbox must be of class")
})
