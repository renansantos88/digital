class DadosPessoaisPage < SitePrism::Page
    

    element :data_nascimento, 'input[name="birthDate"]'
    element :btn_proximo, 'button[type="button"]'
 


    def preencher_dados
        data_nascimento.set '16/12/1988'
        select 'Masculino', from: 'genre'
        select 'Brasil', from: 'nationality'
        select 'Solteiro', from: 'maritalStatus'
        
    end
    
    def preencher_nacionalidade
        select 'Alemanha', from: 'nationality'
        
    end
    
    def clicar_btn_proximo
        btn_proximo.click
    end
end