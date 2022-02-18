context("convert from DST date to date format")

test_that("DSTdate_to_date() works", {
  
  expect_identical(DSTdate_to_date("2022M02D18"), as.Date("2022-02-18"))
  
})