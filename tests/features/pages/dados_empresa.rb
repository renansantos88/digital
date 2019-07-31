class DadosEmpresaPage < SitePrism::Page
    
    element :data_atualizacao, 'input[name="contractLastUpdate"]'
    element :site_empresa, 'input[name="siteURL"]'
    element :btn_proximo, 'button[data-cy="wizard-next"]'
    element :razao_social, 'input[name="companyName"]'
    element :nome_fantasia, 'input[name="businessName"]'
    element :telefone, 'input[name="companyPhone"]'

    def confirmar_dados
        razao_social.set 'Empresa Teste LTDA'
        nome_fantasia.set 'Empresa Fantasia'
        telefone.set '1633225992'
        select 'Cultivo de arroz', from: 'cnae'
    end

    def preencher_dados_empresa

        select '58 - Agência de Turismo', from: 'activityBranch'
        select '104-0 - Órgão Público do Poder Legislativo Federal', from: 'legalNature'
        data_atualizacao.set '03/05/2018'
        site_empresa.set 'www.empresa.com.br'
    end


    def clicar_btn_proximo
        btn_proximo.click
    end

end