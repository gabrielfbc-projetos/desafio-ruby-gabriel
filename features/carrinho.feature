#language: pt

Funcionalidade: Carrinho

  Contexto: acessar pagina inicial
    Dado que acesso a página inicial do site
    E autorizo o uso de cookies
  
  Cenário: adicionar produto ao carrinho
    Dado que busco pelo termo celular
    E acesso a página de descrição do primeiro produto
    Quando clico no botao de adicionar produto ao carrinho
    Então devo ser direcionado para a página do carrinho com o produto adicionado
    E devo visualizar nome do produto igual ao da página de descrição
