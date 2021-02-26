Dado('que acesso a página inicial do site') do
  @app.base.acessar_url('https://www.livelo.com.br/')
end

Dado('autorizo o uso de cookies') do
  @app.base.aceitar_cookies
end

Dado('que busco pelo termo celular') do
  @app.header_page.preencher_input_pesquisa('celular')
  @app.header_page.clicar_botao_pesquisar
end

Dado('acesso a página de descrição do primeiro produto') do
  @app.plp_page.clicar_primeiro_produto_listagem
end

Quando('clico no botao de adicionar produto ao carrinho') do
  @app.pdp_page.salvar_nome_produto
  @app.pdp_page.clicar_botao_adicionar_ao_carrinho
end

Então('devo ser direcionado para a página do carrinho com o produto adicionado') do
  expect(@app.carrinho_page.obter_texto_titulo_pagina_carrinho).to eq('Seu carrinho')
end

Então('devo visualizar nome do produto igual ao da página de descrição') do
  expect(@app.pdp_page.obter_nome_produto_salvo).to eq(@app.carrinho_page.obter_texto_nome_produto)
end
