test_that("bar_plotly() works", {

  # Tipo e comprimento
  expect_equal(typeof(bar_plotly()), "list")
  expect_equal(length(bar_plotly()), 8)

  # Visivel e nao NULL
  expect_visible(bar_plotly())
  expect_false(is.null(bar_plotly()))

  # Classe
  expect_s3_class(bar_plotly(), "plotly")
  expect_s3_class(bar_plotly(), "htmlwidget")

})
