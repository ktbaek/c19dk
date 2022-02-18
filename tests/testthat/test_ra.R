context("running average")

test_that("ra() works", {
  
  x <- c(1:90)
  
  result1 <- c(NA, NA, NA, NA, c(5:86), NA, NA, NA, NA)
  result2 <- c(NA, NA, NA, NA, NA, NA, NA, NA, c(5:86))
  
  expect_equal(ra(x, n = 9, s = 2), as.ts(result1))
  expect_equal(ra(x, n = 9, s = 1), as.ts(result2))
  
})
