Dados("que acessei a {string}") do |site|
  cadastro.load
  @tipo_site = site
  if @tipo_site == 'Banco'
    cadastro.selecionar_banco
    cadastro.seleciona_brasileiro
  end 
end

Dados("sou uma {string} e desejo ver os termos de uso") do |pessoa|
  cadastro.documento.set documento_valido.tipo_pessoa(pessoa)
    cadastro.preencher_campos
    cadastro.clicar_botao_proximo
end

Quando("clicar no link") do
  @janela = window_opened_by do 
    termos_de_uso.clicar_termos_de_uso(@site)
  end
end
  
Entao("verifico os termos de {string}") do |site_termos| 
    
  within_window @janela do
    sleep(3)
    if site_termos == 'Corretora'
      expect(current_url).to eql 'https://www.confidencecambio.com.br/termos-de-uso/'
      @mensagem = find('h1').text
      expect(@mensagem).to eql 'Termos e Condições Gerais de Uso do Site'
    else
      expect(current_url).to eql 'https://www.travelexbank.com.br/wp-content/uploads/2019/06/CC_Termos_condicoes_TravelexBank.pdf'
    end
    
  end

end

