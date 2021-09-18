#' Plota grafico de barras estatico dos precos das marmitas
#'
#' @description
#'
#' `bar_plot()` exibe um grafico de barras estatico em que e possivel observar
#' os valores das marmitas em ordem decrescente.
#'
#' @return Um grafico de barras estatico
#' @export
#'
#' @examples
#' bar_plot()
bar_plot <- function() {
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
}
