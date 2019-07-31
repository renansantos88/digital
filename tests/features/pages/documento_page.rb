class DocumentoPage < SitePrism::Page
    

    element :nome_mae, 'input[name="motherName"]'
    element :nome_pai, 'input[name="fatherName"]'
    element :numero_rg, 'input[name="rg.number"]'
    element :data_emissao_rg,'input[name="rg.issueDate"]'
    element :orgao_emissor_rg, 'input[name="rg.expeditor"]'
    element :btn_proximo, 'button[data-cy="wizard-next"]'
    element :btn_modal_continuar, 'button[data-cy="modal-cancel"]'
    element :btn_modal_finalizar, 'button[data-cy="modal-confirm"]'

    def preencher_rg
        first('button[class="icon-button mr-2 font-size-2 color-primary sc-ifAKCX iOtQyu"]').click
        nome_mae.set 'Mãe Teste da Silva'
        nome_pai.set 'Pai Teste da Silva'
        numero_rg.set '468745552'
        data_emissao_rg.set '02/02/2018'
        orgao_emissor_rg.set 'SSP'
    end
    
    
    def fazer_upload
        @imagem = File.join(Dir.pwd,'/features/imagem.png')
        page.attach_file(@imagem) do
            page.first('button[data-cy="btn-add-upload"]').click
          end
    end

    def clicar_btn_proximo
        sleep(5)
        btn_proximo.click
    end

    def modal_clicar_finalizar
        within('.modal-overlay-footer') do
            btn_modal_finalizar.click
            end 
    end
    
    def modal_clicar_continuar
        within('.modal-overlay-footer') do
        btn_modal_continuar.click
        end
    end


end