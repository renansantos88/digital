Dado("que sou um {string} e fiz o cadastro parcial no site de {string}") do |pessoa, site|
    cadastro.load
    if site == 'Banco'
        cadastro.selecionar_banco
        case pessoa
            when 'Brasileiro'
                cadastro.seleciona_brasileiro
            when 'Estrangeiro'
                cadastro.seleciona_estrangeiro
                cadastro.preencher_pais_nacionalidade('Alemanha') 
            when 'PessoaJuridica'
                cadastro.seleciona_pj
        end
    end
    @tipo_pessoa = pessoa
    @numero_documento = documento_valido.tipo_pessoa(pessoa)
    cadastro.documento.set @numero_documento
    cadastro.preencher_campos
    cadastro.clicar_botao_proximo
    sleep(3) 
    termos_de_uso.selecionar_checkbox_termos
    if pessoa == 'PessoaJuridica'
        termos_de_uso.selecionar_modalidade_cliente('Eventual_I')
    end
    termos_de_uso.clicar_btn_preencher
      
end
  
  Quando("retomo esse cadastro") do
    cadastro.load
    cadastro.clicar_link_cadastro_iniciado
    cadastro.documento.set @numero_documento
    case @tipo_pessoa
    when 'Brasileiro'
        cadastro.celular.set '5519988776655'
    when 'Estrangeiro'
        cadastro.celular.set '5519988776655'
        cadastro.preencher_pais_nacionalidade('Alemanha') 
    when 'PessoaJuridica'
        cadastro.email.set 'rpereira@confidencecambio.com.br'
    end
    cadastro.clicar_botao_proximo

  end
  
  Então("devo retornar na página que parei") do
    if @tipo_pessoa == 'PessoaJuridica'
        @mensagem = find('h2').text
        expect(@mensagem).to eql 'CONFIRME OS DADOS'
    else
        page.assert_text(text, 'DADOS PESSOAIS')    
    end
  end
  