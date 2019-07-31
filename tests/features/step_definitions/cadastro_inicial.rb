Dado("que eu tenho o seguinte cadastro em {string}") do |site, table|
    cadastro.load
    @usuario = table.rows_hash
    if site == 'Banco'
      cadastro.selecionar_banco
      cadastro.seleciona_estrangeiro
      cadastro.clicar_combo_pais
      cadastro.preencher_pais_nacionalidade(@usuario[:pais])
    end
    cadastro.clicar_campos
    cadastro.preencher_campos_tabela(@usuario)
end

 
  Dado("que eu sou um {string} e quero me cadastrar no {string}") do |pessoa, site|

    cadastro.load
    cadastro.tipo_pessoa_site(pessoa, site)
    cadastro.documento.set documento_valido.tipo_pessoa(pessoa)
   
  end

  Quando("tento fazer o meu cadastro") do
    cadastro.clicar_botao_proximo
    
  end

  Dado("que estou no site {string}") do |site|
    cadastro.load
    if site == 'Banco'
      cadastro.selecionar_banco
    end
  end
  
  Dado("que sou uma Pessoa {string} com o documento {string}") do |pessoa, documento|
    case pessoa 
      when 'Estrangeiro'
          cadastro.seleciona_estrangeiro
          cadastro.preencher_pais_nacionalidade('Alemanha')  
      when 'Brasileiro'
        cadastro.seleciona_brasileiro
    end
    cadastro.documento.set documento
    cadastro.preencher_campos

  end
  
  Quando("realizo meu cadastro") do
    
    cadastro.clicar_botao_proximo
    
  end

  Então("devo ver os termos de uso") do

    expect(page.has_text?('Li e concordo com os Termos de Uso')).to be true 

  end

  Então("devo ver a mensagem {string}") do |mensagem|
    expect(page.has_text?(mensagem)).to be true 
  end

  Então("o botao Proximo desabilitado") do
    expect(page).to have_button('Próximo', disabled: true)
  end
 
  Entao("recebo a mensagem {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end

