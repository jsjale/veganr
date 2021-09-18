#' Busca o cardapio de marmitas veganas do Beleaf
#'
#' @description
#'
#' `r lifecycle::badge("stable")` `buscar_marmitas_veganas()` retorna uma tibble
#' contendo o cardapio das marmitas veganas do Beleaf. Todo o cardapio e 100%
#' vegetal e sem lactose. Existem opcoes de pratos, doces e sopas.
#'
#' @return Uma tibble contendo todas as marmitas disponiveis
#' @export
#'
#' @examples buscar_marmitas_veganas()
buscar_marmitas_veganas <- function() {
  html <- "https://www.beleaf.com.br/cardapio-marmitas-veganas" %>%
    xml2::read_html()

  url <- html %>%
    xml2::xml_find_all("//a[contains(@class, 'action more')]") %>%
    purrr::map( ~ xml2::xml_attr(.x, "href")) %>%
    purrr::map_dfr( ~ tibble::enframe(purrr::set_names(.x, "url")), .id = "item") %>%
    dplyr::select("url" = value)

  nm <- c("nome", "descricao", "preco")
  infos <-
    html %>% xml2::xml_find_all("//div[contains(@class, 'product-item-details')]") %>%
    purrr::map( ~ stringr::str_squish(xml2::xml_text(xml2::xml_children(.x)))) %>%
    purrr::map_dfr( ~ tibble::enframe(purrr::set_names(.x, nm)), .id = "item") %>%
    tidyr::pivot_wider() %>%
    dplyr::mutate(
      preco = readr::parse_number(preco, locale = readr::locale(decimal_mark = ",")),
      tipo_refeicao = dplyr::case_when(
        stringr::str_detect(nome, "BOLO|MOUSSE|BROWNIE|CHEESECAKE|TORTA") ~ "Doce",
        stringr::str_detect(nome, "CREME DE|MINESTRONE") ~ "Sopa",
        TRUE ~ "Prato"
      )
    )
  dplyr::bind_cols(infos, url)
}
