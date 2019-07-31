class CadastroInicialPage < SitePrism::Page
    
    set_url 'c6-bank'
    
    
    element :documento, 'input[name="documentNumber"]'
    element :contato, 'input[name="name"]'
    element :email, 'input[name="email"]'
    element :celular, 'input[name="phone"]'
    element :comercial,'input[name="commercialRep"]'
    element :combo_pais, 'select[name="documentCountry"]'
    element :btn_Proximo, 'button[type="submit"]'
    element :mensagem_bem_vindo, 'div[class="wizard-body carousel-wrapper container"]'
    element :btn_cadastro_iniciado, 'button[data-cy="btn-recover"]'
    element :btn_pj, 'button[aria-label="Pessoa jurídica"]'
    element :btn_pf, 'button[aria-label="Pessoa física"]'
    element :btn_cpf_passaporte, 'button[class="sc-bdVaJa button button-link    sc-EHOje fvzQum"]'
    

    def preencher_campos
        contato.set 'Pessoa Cadastro Teste'
        email.set 'rpereira@confidencecambio.com.br'
        celular.set '5519988776655'
        comercial.set 'Pessoa Comercial'
    end

    def preencher_campos_tabela(usuario)
        contato.set usuario[:contato]
        email.set  usuario[:email]
        celular.set usuario[:celular]
        comercial.set usuario[:comercial_responsavel]       
    end
 
    def preencher_pais_nacionalidade(pais)
        if !pais.empty?
            select pais, from: 'documentCountry'
        end
    end
        
   


    def clicar_botao_proximo
        wait_until_btn_Proximo_visible
        btn_Proximo.click
    end

    def tipo_pessoa_site(pessoa, site)
        
        if site == 'corretora'
            select 'Corretora', from: 'siteName'
        else
            select 'Banco', from: 'siteName'
            selecionar_campos_pessoa(pessoa)
   
        end
        wait_until_documento_visible
    end
    

    def selecionar_campos_pessoa(pessoa)
        if pessoa == 'Brasileiro'

            btn_pf.click              
        elsif pessoa == 'Estrangeiro'
            btn_pf.click
            btn_cpf_passaporte.click
            select 'Alemanha', from: 'documentCountry'
        else
            btn_pj.click
        end
    end
    def selecionar_banco
        select 'Banco', from: 'siteName'        
    end

    def seleciona_brasileiro
        btn_pf.click        
    end

    def seleciona_pj
        btn_pj.click
    end

    def seleciona_estrangeiro
        btn_pf.click
        btn_cpf_passaporte.click
    end


    def clicar_campos
        contato.click
        email.click
        celular.click
        comercial.click        
    end

    def clicar_combo_pais
        combo_pais.click
    end
    
    def preencher_documento(numero)
        documento.set numero
    end
    def clicar_link_cadastro_iniciado
        wait_until_btn_cadastro_iniciado_visible
        btn_cadastro_iniciado.click  
    end
end
