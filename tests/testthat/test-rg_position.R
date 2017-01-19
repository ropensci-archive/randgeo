context("rg_position")

test_that("rg_position works", {
  skip_on_cran()

  expect_is(rg_position(), "numeric")
  expect_type(rg_position(), "double")
  expect_equal(length(rg_position()), 2)

  # lng is between -180 and 180
  expect_lte(abs(rg_position()[1]), 180)

  # lat is between -90 and 90
  expect_lte(abs(rg_position()[2]), 90)
})
