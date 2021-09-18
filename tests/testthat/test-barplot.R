test_that("bar_plot() works", {

  expect_equal(typeof(bar_plot()), "list")
  expect_equal(length(bar_plot()), 9)
  expect_visible(bar_plot())
  expect_false(is.null(bar_plot()))

  expect_s3_class(bar_plot(), "gg")
  expect_s3_class(bar_plot(), "ggplot")

})
