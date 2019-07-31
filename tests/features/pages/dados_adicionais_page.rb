class DadosAdicionaisPage < SitePrism::Page

    element :media_renda_mensal, 'input[name="averageIncome"]'
    element :patrimonio, 'input[name="accumulatedPatrimony"]'
    element :agencia, 'input[name="bank.branch"]'
    element :conta_bancaria, 'input[name="bank.accountNumber"]'
    element :btn_proximo, 'button[data-cy="wizard-next"]'

    
   
    def preencher_dados_adicionais
        select 'de R$ 50 mil até R$ 200 mil/ano', from: 'rangeVDO'
        select 'Diplomata e afins', from: 'occupation'
        media_renda_mensal.set '10000'
        patrimonio.set '1000000'
        select '001 - Banco do Brasil S.A.', from: 'bank.bankNumber'
        select 'Conta corrente', from: 'bank.accountType'
        agencia.set '0314'
        conta_bancaria.set '434144'
    end

    def clicar_btn_proximo
        btn_proximo.click
    end

    def fazer_upload_irrf
        first('button[@data-cy="btn-add-upload"]').click
        # @imagem = File.join(Dir.pwd,'/features/imagem.png')
        # page.attach_file(@imagem) do
        #     page.first('button[@data-cy="btn-add-upload"]').click
        #   end
    end
end