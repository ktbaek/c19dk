context("convert between date formats")

test_that("date_to_yymmdd() works", {
  
  expect_identical(date_to_yymmdd("2022-02-18"), "220218")
  
})