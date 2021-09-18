#' Sorteia uma marmita
#'
#' @description
#'
#' `sortear_marmita()` sorteia uma marmita de acordo com o `tipo` previamente
#' selecionado e tambem com o `preco_maximo` aceitavel.
#'
#'   Quanto ao `tipo` pode ser:
#'
#'   * Sopa: atualmente temos sopas das culinarias brasileira e italiana com
#'   indicadores nutricionais de pouco carbo e pouca caloria.
#'
#'   * Prato: atualmente temos pratos das culinarias asiatica, brasileira,
#'   funcional, indiana, italiana, mediterranea e arabe com indicadores
#'   nutricionais do tipo apimentado, muita fibra, proteico, pouco carbo,
#'   pouca caloria e pouca gordura.
#'
#'   * Doce: atualmente temos doces com indicadores nutricionais de zero
#'   acuacar e com acucar.
#'
#' @param tipo `r lifecycle::badge("stable")` especifica qual o tipo de marmita
#' deve ser sorteado
#' @param preco_maximo `r lifecycle::badge("stable")` indica o preco
#' maximo aceitavel para comprar uma marmita
#'
#' @return Uma string com informacoes sobre a marmita, os ingredientes
#'  e o preco
#'
#' @export
#'
#' @seealso
#' Para ver as opcoes de marmitas disponiveis, acesse o dataset
#' [marmitas_veganas] ou execute as funcoes [bar_plot()], [bar_plotly()]
#' e [sun_plotly()]
#'
#' @examples
#' # Sorteando uma marmita do tipo sopa custando no maximo 20 reais
#' sortear_marmita(tipo = "Sopa", preco_maximo = 20)
sortear_marmita <-
  function(tipo = c("Sopa", "Prato", "Doce"),
           preco_maximo = 20) {
    tipo <- stringr::str_to_title(tipo)
    if (any((tipo %in% c("Sopa", "Prato", "Doce"))) == FALSE) {
      stop("tipo deve ser pelo menos 'Sopa', 'Prato' e/ou 'Doce'")
    }
    if (!is.numeric(preco_maximo)) {
      stop("preco_maximo deve ser do tipo numerico")
    }
    if (preco_maximo < min(veganr::marmitas_veganas$preco)) {
      stop(
        glue::glue(
          "preco_maximo deve ser maior ou igual a {min(veganr::marmitas_veganas$preco)}"
        )
      )
    }
    if (preco_maximo > max(veganr::marmitas_veganas$preco)) {
      warning(
        glue::glue(
          "preco_maximo deve ser menor ou igual a {max(veganr::marmitas_veganas$preco)}"
        )
      )
    }
    veganr::marmitas_veganas %>%
      dplyr::filter(preco <= preco_maximo, tipo_refeicao %in% tipo) %>%
      dplyr::slice_sample() %>%
      dplyr::mutate(
        texto = glue::glue(
          "
          Refeicao sugerida: {nome}
          Ingredientes: {descricao}
          Preco: R$ {preco}"
        )
      ) %>%
      dplyr::pull(texto)
  }
