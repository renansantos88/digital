class TermosdeUsoPage < SitePrism::Page

    element :checkbox_termos, '.checkbox--span'
    element :checkbox_termos_pj, 'input[data-cy="field-acceptTerms"]'
    element :btn_preencher_cadastro, 'button[aria-label="Preencher o cadastro"]'
    element :card_eventual_i, 'div[data-cy="range-vdo-1"]'
    element :card_eventual_ii, 'div[data-cy="range-vdo-2"]'
    element :card_permanente, 'div[data-cy="range-vdo-3"]'
    element :btn_modal_confirmar, 'button[data-cy="modal-confirm"]'

    def selecionar_checkbox_termos
        checkbox_termos.click
   
    end

    def clicar_btn_preencher
        btn_preencher_cadastro.click
    end

    def selecionar_modalidade_cliente(modalidade)
        case modalidade
        when 'Eventual_I'
        card_eventual_i.click
        when 'Eventual_II'
            card_eventual_ii.click
        when 'Permanente'
            card_permanente.click
        end
        within('.modal-overlay-container') do
            btn_modal_confirmar.click
        end
    end

    def clicar_termos_de_uso(site)
        windows.last
        if site == 'Corretora'          
               find_link(href: 'https://www.confidencecambio.com.br/termos-de-uso/').click

        else
            click_link('Termos de Uso')
        end
    end
    
    

end