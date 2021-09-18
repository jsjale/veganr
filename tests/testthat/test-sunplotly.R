test_that("sun_plotly() works", {

  # Tipo e comprimento
  expect_equal(typeof(sun_plotly()), "list")
  expect_equal(length(sun_plotly()), 8)

  # Visibilidade e nao NULL
  expect_visible(sun_plotly())
  expect_false(is.null(sun_plotly()))

  # Classe
  expect_s3_class(sun_plotly(), "plotly")
  expect_s3_class(sun_plotly(), "htmlwidget")

})
