#' Plota um grafico de sol iterativo com os precos das marmitas
#'
#' @description
#'
#' `sun_plotly()` e uma funcao que retorna um grafico iterativo em que e
#' possivel clicar nas categorias para exibi-las com mais detalhes.
#'
#' @return Um grafico de sol iterativo
#' @export
#'
#' @examples
#' sun_plotly()
sun_plotly <- function() {
  p <- plotly::plot_ly(
    labels = c("Prato", "Doce", "Sopa", veganr::marmitas_veganas$nome),
    parents = c("", "", "",  veganr::marmitas_veganas$tipo_refeicao),
    values = c(0, 0, 0, veganr::marmitas_veganas$preco),
    type = "sunburst"
  )
  p
}
