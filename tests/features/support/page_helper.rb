Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }

module PageObjects
    def cadastro
        @cadastro ||=CadastroInicialPage.new
        
    end

    def termos_de_uso
        @termos_de_uso ||= TermosdeUsoPage.new
    end

    def dados_pessoais
        @dados_pessoais ||= DadosPessoaisPage.new

    end

    def endereco
        @endereco ||=EnderecoPage.new
    end 

    def documento
        @documento ||=DocumentoPage.new
        
    end

    def dados_adicionais
        @dados_adicionais ||=DadosAdicionaisPage.new
        
    end

    def dados_empresa
        @dados_empresa ||=DadosEmpresaPage.new
    end

    def socio
        
        @socio ||=SocioPage.new
        
    end
end