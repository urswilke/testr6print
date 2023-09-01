test_that("R6 print is reproduced", {
  testthat::expect_snapshot(MyClass$new())
})
