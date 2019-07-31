Dir[File.join(File.dirname(__FILE__), '../support/documento.rb')].each { |file| require file }

module DocumentoValido
    def documento_valido
        @documento_valido ||= Documento.new
    end

end
