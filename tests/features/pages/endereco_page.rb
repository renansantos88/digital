class EnderecoPage < SitePrism::Page


    element :cep, 'input[name="zipCode"]'
    element :logradouro, 'input[name="street"]'
    element :numero, 'input[name="number"]'
    element :complemento, 'input[name="complement"]'
    element :bairro, 'input[name="neighborhood"]'
    element :cidade, 'input[name="city"]'
    element :btn_add_endereco, 'button[data-cy="btn-add-address"]'
    element :btn_salvar_endereco, 'button[data-cy="btn-save-address"]'
    element :btn_proximo, 'button[aria-label="Próximo"]'

    def preencher_endereco
        cep.set '13073010'
        logradouro.set 'Rua Dr. Buarque de Macedo'
        numero.set '101'
        complemento.set 'Bloco 02 Ap 33'
        bairro.set 'Jd. Brasil'
        cidade.set 'Campinas'
        select 'São Paulo', from: 'state'
        btn_salvar_endereco.click
    end

    def clicar_btn_proximo
        btn_proximo.click
        
    end

    def adicionar_novo_endereco
        btn_add_endereco.click
    end
end