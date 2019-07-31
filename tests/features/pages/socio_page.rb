class SocioPage < SitePrism::Page

    element :icon_editar, 'svg[data-tip="Editar"]'
    element :documento, 'input[name="documentNumber"]'
    element :porcentagem, 'input[name="percentage"]'
    element :data_nascimento, 'input[name="birthDate"]'
    element :email, 'input[name="email"]'
    element :check_representante, '.checkbox--span'


    def editar_socio
        icon_editar.click
    end
    
    def preencher_socio
        documento.set '36868358865'
        porcentagem.set '38'
        data_nascimento.set '16/12/1988'
        email.set 'teste@teste.com.br'
        select 'Brasil', from: 'nationality'
        # all(".checkbox--span", :match => :first)
        # find(".checkbox--span", match: :first).click
        # within ".checkbox--span"[4] do
        #     expect(page).to have_content 'responsible'
        #   end
        # find('input[data-cy="field-responsible"]').click
        # find('.checkbox--span')[0].click
        # find(".checkbox--span", match: :first).click
        # find(".checkbox--span", match: :first).click
        # find(".checkbox--span", match: :first).click
        # find('.class="col-xs-12"')
        find(:xpath, ".//span[@class='checkbox--span']").should have_content("responsible")
        within('.class="col-xs-12"') do
            find('input[name="responsible"]')
        end
        
            
        # find(:xpath, "(.checkbox--span)[25]").click
        # find(:xpath, "(//input[@type='checkbox'])[25]")
        # within
    end
end