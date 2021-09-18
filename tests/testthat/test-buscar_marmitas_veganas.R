test_that("buscar_marmitas_veganas() works", {

  # Dimensoes e nomes
  expect_equal(nrow(buscar_marmitas_veganas()), 40)
  expect_equal(ncol(buscar_marmitas_veganas()), 6)
  expect_equal(rownames(marmitas_veganas), as.character(1:35))
  expect_equal(
    colnames(marmitas_veganas),
    c("item", "nome", "descricao", "preco", "tipo_refeicao", "url")
  )
  expect_named(
    buscar_marmitas_veganas(),
    c("item", "nome", "descricao", "preco", "tipo_refeicao", "url")
  )
  expect_identical(
    names(buscar_marmitas_veganas()),
    c("item", "nome", "descricao", "preco", "tipo_refeicao", "url")
  )

  # Tipo e comprimento
  expect_equal(typeof(buscar_marmitas_veganas()), "list")
  expect_equal(length(buscar_marmitas_veganas()), 6)
  expect_gt(length(buscar_marmitas_veganas()), 5)

  # Visivel e nao NULL
  expect_visible(buscar_marmitas_veganas())
  expect_false(is.null(buscar_marmitas_veganas()))

  # Classe
  expect_s3_class(buscar_marmitas_veganas(), "tbl_df")
  expect_s3_class(buscar_marmitas_veganas(), "tbl")
  expect_s3_class(buscar_marmitas_veganas(), "data.frame")

})
