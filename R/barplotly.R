#' Plota um grafico de barras iterativo dos precos das marmitas
#'
#' @description
#'
#' `bar_plotly()` exibe um grafico dinamico em que e possivel observar
#' os valores das marmitas em ordem decrescente.
#'
#' @return Um grafico de barras iterativo
#' @export
#'
#' @examples
#' bar_plotly()
bar_plotly <- function() {
  p <-
    veganr::marmitas_veganas %>%
    dplyr::mutate(nome = forcats::fct_reorder(nome, preco, .desc = FALSE)) %>%
    ggplot2::ggplot(ggplot2::aes(x = nome, y = preco, fill = preco)) +
    ggplot2::geom_bar(stat = "identity") +
    ggrepel::geom_text_repel(
      ggplot2::aes(label = paste("R$", preco)),
      hjust = 1,
      size = 3,
      box.padding = 0.01,
      color = "red"
    ) +
    ggplot2::scale_fill_viridis_c() +
    ggplot2::coord_flip() +
    ggplot2::labs(x = "Marmita", y = "preco (R$)") +
    ggplot2::theme_bw() +
    ggplot2::theme(axis.title = ggplot2::element_text(face = "bold"))
  suppressWarnings(plotly::ggplotly(p))
}
