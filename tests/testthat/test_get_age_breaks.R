context("get vector of breaks")

test_that("get_age_breaks() works", {
  
  expect_identical(get_age_breaks(maxage = 50, agesplit = 5),  c(-1, 4, 9, 14, 19, 24, 29, 34, 39, 44, 49, 125))
  
})
