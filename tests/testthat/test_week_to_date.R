context("convert week number to date")

test_that("week_to_date() works", {
  
  year <- c(2010:2020)
  week <- rep(1, 11)
  
  result <- c(
    as.Date("2010-01-04"),
    as.Date("2011-01-03"),
    as.Date("2012-01-02"),
    as.Date("2012-12-31"),
    as.Date("2013-12-30"),
    as.Date("2014-12-29"),
    as.Date("2016-01-04"),
    as.Date("2017-01-02"),
    as.Date("2018-01-01"),
    as.Date("2018-12-31"),
    as.Date("2019-12-30")
    )
  
  
  expect_identical(week_to_date(year, week, 1), result)
  
})
