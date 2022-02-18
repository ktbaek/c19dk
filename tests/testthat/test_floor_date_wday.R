context("convert date to earlier date in week based on given weekday")

test_that("floor_date_wday() works", {
  
  dates <- c(
    as.Date("2021-12-28"),
    as.Date("2021-12-29"),
    as.Date("2021-12-30"),
    as.Date("2021-12-31"),
    as.Date("2022-01-01"),
    as.Date("2022-01-02"),
    as.Date("2022-01-03")
  )

  result1 <- c(
    as.Date("2021-12-27"),
    as.Date("2021-12-27"),
    as.Date("2021-12-27"),
    as.Date("2021-12-27"),
    as.Date("2021-12-27"),
    as.Date("2021-12-27"),
    as.Date("2022-01-03")
  )
  
  result2 <- c(
    as.Date("2021-12-26"),
    as.Date("2021-12-26"),
    as.Date("2021-12-26"),
    as.Date("2021-12-26"),
    as.Date("2021-12-26"),
    as.Date("2022-01-02"),
    as.Date("2022-01-02")
  )

  expect_identical(floor_date_wday(dates, 1), result1)
  expect_identical(floor_date_wday(dates, 7), result2)
})
