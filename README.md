
<!-- README.md is generated from README.Rmd. Please edit that file -->

# veganr

<!-- badges: start -->

![GitHub repo
size](https://img.shields.io/github/repo-size/jsjale/veganr)
<!-- badges: end -->

O objetivo do veganr é disponibilizar as opções para compra de marmitas
veganas por meio da base de dados `marmitas_veganas` extraída do site do
[Bleaf](https://www.beleaf.com.br/cardapio-marmitas-veganas).

As opções de marmitas são:

-   Sopa: atualmente temos sopas das culinárias brasileira e italiana
    com indicadores nutricionais de pouco carbo e pouca caloria.

-   Prato: atualmente temos pratos das culinárias asiática, brasileira,
    funcional, indiana, italiana, mediterrânea e árabe com indicadores
    nutricionais do tipo apimentado, muita fibra, proteico, pouco carbo,
    pouca caloria e pouca gordura.

-   Doce: atualmente temos doces com indicadores nutricionais de zero
    acuacar e com acucar.

## Instalação

Você pode instalar a versão em desenvolvimento a partir do site
[GitHub](https://github.com/) com:

``` r
# install.packages("devtools")
devtools::install_github("jsjale/veganr")
```

## Example

Este exemplo básico mostra como exibir no console a tibble mais atual
contendo as informações

``` r
library(veganr)
```

# Buscando a base de dados mais atual com `buscar_marmitas_veganas()`

``` r
DT::datatable(buscar_marmitas_veganas())
```

<div id="htmlwidget-3b36c719626ebfa381e5" style="width:100%;height:auto;" class="datatables html-widget"></div>
<script type="application/json" data-for="htmlwidget-3b36c719626ebfa381e5">{"x":{"filter":"none","vertical":false,"data":[["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40"],["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40"],["TAGLIATELLE AO FUNGHI","MACARONI COM CHEDDAR DE CASTANHAS","RAVIOLI DE ESPINAFRE AO SUGO","YAKISOBA","ARROZ BIRYANI DE JACA","VEGETAIS ASIÁTICOS AO MOLHO DE COCO","MOQUECA DE PUPUNHA E CASTANHA DE CAJU","ARROZ DE FUNGHI AO CREME DE CASTANHAS","TUTU DE FEIJÃO E TOFU DEFUMADO","LEGUMES E COGUMELOS DE PANELA","BOBÓ DE BANANA DA TERRA","STROGONOFF DE DOIS COGUMELOS","FEIJUCA DO FUTURO™","ALMÔNDEGAS DO FUTURO™","LASANHA DA CASA","EMPANADINHOS SEM-FRANGO","COUVE-FLOR E GRÃO DE BICO AO CURRY","SEM-FRANGO À PARMEGIANA","FALAFEL AO MOLHO DE HORTELÃ","BOWL DE GRÃO DE BICO E TOMATE CONFIT","TOFU TIKKA MASALA","PAELLA DE FRUTOS DO MATO","SEM-CARNE MOÍDA COM LEGUMES","RAGU DEFUMADO DE JACA VERDE","NHOQUE DE BATATAS AO COGUMELO PORTOBELLO","GRÃO DE BICO E MANGA AO MOLHO DE TAHINE","CUSCUZ MARROQUINO","BAIÃO DE DOIS","BURRITO BOWL","CREME DE MILHO PROTEICO","CREME DE CENOURA","CREME DE ABÓBORA","MINESTRONE","CHEESECAKE DE AMORA","BOLO DE BANANA COM AMÊNDOAS E SEM AÇÚCAR","TORTA DE MAÇÃ COM ESPECIARIAS","TORTA DE MOUSSE DE CHOCOLATE SEM AÇÚCAR","BROWNIE DE CHOCOLATE E NOZES","BOLO DE MAÇÃ COM CANELA","MOUSSE DE MARACUJÁ"],["Tomatinhos confit com alho-poró","Farofa de sementes e espinafre refogado","Com castanhas do Pará","Shiitake, brócolis e cenoura salteados","Couve-flor, ervilhas e mix de sementes","Grão de bico, mix de quinoa, sementes e purê de cenoura","Arroz e farofa de cenoura","Abóbora cabotian, ervilha e cenoura salteadas","Arroz integral, couve, abóbora e banana glaceadas","Quinoa e purê de mandioquinha","Arroz jasmim e espinafre refogado","Arroz e brócolis refogado no alho","Arroz, couve refogada e tofu defumado","Espaguete ao molho sugo","Molho bolonhesa e creme de castanhas com tofu","Creme de milho, arroz integral e legumes assados","Cevadinha com cenoura ralada","Arroz integral e batata sauté","Homus de beterraba, arroz, lentilha e cebola caramelizada","Couve-flor na páprica e vegetais mediterrâneos","Arroz jasmim e ervilha fresca","Brócolis, tomates confit e alga nori","Feijão carioca, arroz cateto e trigo integral","Polenta cremosa e cenoura assada","Molho de castanha de caju e mostarda dijon","Vegetais marroquinos, quinoa vermelha","Lentilha com legumes, couve refogada","Mandioca assada, couve refogada","Milho verde, tomate, cenoura e repolho roxo","Brócolis com edamame, arroz sete grãos com trigo integral","Leite de coco e mandioquinha","Semente de chia e gengibre","Espinafre, abobrinha e feijão branco","Biomassa de banana verde e leite de coco","Aveia, Linhaça, Chia E Canela - Sem Açúcar","Açúcar Demerara, Aveia e Linhaça","Aveia, Linhaça, Chia, e Canela - Sem Açúcar","Chocolate 100% cacau","Açúcar Mascavo e Castanha do Pará","Creme de tofu e castanha de caju"],[28.9,28.9,28.9,24.9,24.9,21.9,24.9,25.9,20.9,23.9,26.9,26.9,25.7,27.9,28.9,21.84,22.9,21.84,27.3,16.72,25.7,20.9,20.9,23.9,27.3,24.8,22.9,23.9,20.9,16.72,16.9,16.9,16.9,8.4,7.12,7.12,8.4,7.12,7.12,7.6],["Prato","Prato","Prato","Prato","Prato","Prato","Prato","Sopa","Prato","Prato","Prato","Prato","Prato","Prato","Prato","Prato","Prato","Prato","Prato","Prato","Prato","Prato","Prato","Prato","Prato","Prato","Prato","Prato","Prato","Sopa","Sopa","Sopa","Sopa","Doce","Doce","Doce","Doce","Doce","Doce","Doce"],["https://www.beleaf.com.br/tagliatelle-ao-funghi","https://www.beleaf.com.br/macaroni-com-cheddar-de-castanhas","https://www.beleaf.com.br/ravioli-de-espinafre-sugo","https://www.beleaf.com.br/yakisoba","https://www.beleaf.com.br/arroz-biryani-de-jaca","https://www.beleaf.com.br/vegetais-asiaticos-ao-molho-de-coco","https://www.beleaf.com.br/moqueca-de-pupunha-e-castanha-de-caju","https://www.beleaf.com.br/arroz-de-funghi-ao-creme-de-castanhas","https://www.beleaf.com.br/tutu-de-feijao-e-tofu-defumado","https://www.beleaf.com.br/legumes-e-cogumelos-de-panela","https://www.beleaf.com.br/bobo-de-banana-da-terra","https://www.beleaf.com.br/strogonoff-de-dois-cogumelos","https://www.beleaf.com.br/feijuca-do-futurotm","https://www.beleaf.com.br/almondegas-do-futurotm","https://www.beleaf.com.br/lasanha-da-casa","https://www.beleaf.com.br/empanadinhos-sem-frango","https://www.beleaf.com.br/couve-flor-e-gr-o-de-bico-ao-curry","https://www.beleaf.com.br/sem-frango-a-parmegiana","https://www.beleaf.com.br/falafel-ao-molho-de-hortel","https://www.beleaf.com.br/bowl-de-grao-de-bico-e-tomate-confit","https://www.beleaf.com.br/tofu-tikka-masala","https://www.beleaf.com.br/paella-de-frutos-do-mato","https://www.beleaf.com.br/sem-carne-moida-com-legumes","https://www.beleaf.com.br/ragu-defumado-de-jaca-verde","https://www.beleaf.com.br/nhoque-de-batatas-ao-cogumelo-portobello","https://www.beleaf.com.br/grao-de-bico-e-manga-ao-molho-de-tahine","https://www.beleaf.com.br/cuscuz-marroquino","https://www.beleaf.com.br/baiao-de-dois","https://www.beleaf.com.br/burrito-bowl","https://www.beleaf.com.br/creme-de-milho-proteico","https://www.beleaf.com.br/creme-de-cenoura","https://www.beleaf.com.br/creme-de-abobora","https://www.beleaf.com.br/minestrone","https://www.beleaf.com.br/cheesecake-de-amora","https://www.beleaf.com.br/bolo-de-banana-com-am-ndoas-e-sem-acucar","https://www.beleaf.com.br/torta-de-mac-com-especiarias","https://www.beleaf.com.br/torta-de-mousse-de-chocolate-sem-acucar","https://www.beleaf.com.br/brownie-de-chocolate-e-nozes","https://www.beleaf.com.br/bolo-de-mac-com-canela","https://www.beleaf.com.br/mousse-de-maracuja"]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th> <\/th>\n      <th>item<\/th>\n      <th>nome<\/th>\n      <th>descricao<\/th>\n      <th>preco<\/th>\n      <th>tipo_refeicao<\/th>\n      <th>url<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"columnDefs":[{"className":"dt-right","targets":4},{"orderable":false,"targets":0}],"order":[],"autoWidth":false,"orderClasses":false}},"evals":[],"jsHooks":[]}</script>

É possível visualizar um gráfico de barras contendo as informações de
marmitas e preços do banco de dados `marmitas_veganas`, por exemplo:

``` r
bar_plot()
```

<img src="man/figures/README-bar_plot-1.png" width="100%" />

Para visualizar um gráfico de barras iterativo, basta executar a função
`bar_plotly()`. Outra opção iterativa pode ser obtida executando
`sun_plotly()`.
