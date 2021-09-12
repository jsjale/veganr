#' Sortear uma marmita
#'
#' `sortear_marmita()` sorteia uma marmita de acordo com o `tipo` previamente
#' selecionado e tambem com o `preco_maximo` aceitavel
#'
#'   Quanto ao `tipo` pode ser:
#'
#'   * Sopa: atualmente temos sopas das culinarias brasileira e italiana com
#'   indicadores nutricionais de pouco carbo e pouca caloria
#'
#'   * Prato: atualmente temos pratos das culinarias asiatica, brasileira,
#'   funcional, indiana, italiana, mediterranea e arabe com indicadores
#'   nutricionais do tipo apimentado, muita fibra, proteico, pouco carbo,
#'   pouca caloria e pouca gordura
#'
#'   * Doce: atualmente temos com indicadores nutricionais de zero acucar e com
#'   acucar
#'
#' Sortear uma marmita
#'
#' `sortear_marmita()` sorteia uma marmita de acordo com o `tipo` previamente
#' selecionado e tambem com o `preco_maximo` aceitavel
#'
#' @param tipo `r lifecycle::badge("stable")` argumento que especifica
#' qual o tipo de marmita deve ser sorteado
#' @param preco_maximo `r lifecycle::badge("stable")` argumento
#' indicando o preco maximo aceitavel para comprar a marmita
#'
#' @return Uma string com informacoes sobre a marmita, os ingredientes e o preco
#' @export
#'
#' @examples
#' # Sorteando uma marmita do tipo sopa custando no maximo 20 reais
#' sortear_marmita(tipo = "Sopa", preco_maximo = 20)
sortear_marmita <-
  function(tipo = c("Sopa", "Prato", "Doce"),
           preco_maximo = 50) {
    marmitas_veganas %>%
      dplyr::filter(preco <= preco_maximo, tipo_refeicao %in% tipo) %>%
      dplyr::slice_sample() %>%
      dplyr::mutate(
        texto = glue::glue(
          "Refeicao sugerida: {nome} \n
          Ingredientes: {descricao} \n
          Preco: R$ {preco} \n"
        )
      ) %>%
      dplyr::pull(texto)
  }
