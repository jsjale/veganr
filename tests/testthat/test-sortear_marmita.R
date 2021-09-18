test_that("sortear_marmita() works", {

  # Visibilidade
  expect_visible(sortear_marmita())

  # Tipo e nao NULL
  expect_equal(typeof(sortear_marmita()), "character")
  expect_false(is.null(sortear_marmita()))

  # Classe
  expect_s3_class(sortear_marmita(), "glue")
  expect_s3_class(sortear_marmita(), "character")

})
