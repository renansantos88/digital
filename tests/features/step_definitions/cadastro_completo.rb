Dado("que quero me cadastrar no banco") do
    cadastro.load
    cadastro.selecionar_banco
  end
  
  Dado("que sou um brasileiro") do
    cadastro.seleciona_brasileiro
    cadastro.documento.set documento_valido.tipo_pessoa('Brasileiro')
    cadastro.preencher_campos
    
  end

  Dado("que sou um {string}") do |pessoa|
    @tipo_pessoa = pessoa
    case pessoa
    
    when 'Brasileiro'
      cadastro.seleciona_brasileiro

    when 'Estrangeiro'
      cadastro.seleciona_estrangeiro
      cadastro.preencher_pais_nacionalidade('Alemanha')  
 
    end
    cadastro.documento.set documento_valido.tipo_pessoa(pessoa)
    cadastro.preencher_campos
    cadastro.clicar_botao_proximo
  end

  

  
  Quando("realizo o cadastro completo") do
    cadastro.clicar_botao_proximo
    sleep(3) 
    termos_de_uso.selecionar_checkbox_termos
    termos_de_uso.clicar_btn_preencher
    dados_pessoais.preencher_dados
    if @tipo_pessoa == 'Estrangeiro'
      dados_pessoais.preencher_nacionalidade
    end
    dados_pessoais.clicar_btn_proximo
    endereco.preencher_endereco
    endereco.clicar_btn_proximo
    if @tipo_pessoa == 'Brasileiro'
      documento.preencher_rg
    end
    documento.fazer_upload
    documento.clicar_btn_proximo
    documento.modal_clicar_finalizar
    # documento.modal_clicar_continuar
    # dados_adicionais.preencher_dados_adicionais
    # dados_adicionais.clicar_btn_proximo
    # dados_adicionais.fazer_upload_irrf
  end
 
  Dado("que sou um {string} de modalidade {string}") do |pessoa, modalidade|
    cadastro.seleciona_pj
    cadastro.documento.set documento_valido.tipo_pessoa(pessoa)
    cadastro.preencher_campos 
    cadastro.clicar_botao_proximo
    sleep(3) 
    termos_de_uso.selecionar_checkbox_termos
    termos_de_uso.selecionar_modalidade_cliente(modalidade)
    termos_de_uso.clicar_btn_preencher
    dados_empresa.confirmar_dados
    dados_empresa.clicar_btn_proximo
    dados_empresa.preencher_dados_empresa
    dados_empresa.clicar_btn_proximo
    endereco.adicionar_novo_endereco
    endereco.preencher_endereco
    endereco.clicar_btn_proximo
    endereco.clicar_btn_proximo
    find('h1')
    endereco.clicar_btn_proximo
    documento.fazer_upload
    documento.clicar_btn_proximo
    socio.editar_socio
    socio.preencher_socio
end
    
  Entao("recebo a mensagem de confirmação {string}") do |mensagem|
    @msg = find('h2')
    expect(@msg.text).to eql mensagem
  end