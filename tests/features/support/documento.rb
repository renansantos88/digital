class Documento
    def gera_random(n)
        ramNum = (rand()*n).round
    end
    
    
    def mod (dividendo,divisor)
        return (dividendo - ((dividendo/divisor)*divisor).floor).round   
    end
    
    def cpf
        n = 9
        n1 = gera_random(n)
        n2 = gera_random(n)
        n3 = gera_random(n)
        n4 = gera_random(n)
        n5 = gera_random(n)
        n6 = gera_random(n)
        n7 = gera_random(n)
        n8 = gera_random(n)
        n9 = gera_random(n)
        d1 = n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10
        d1 = 11 - (mod(d1,11))
        if d1 >=10
            d1 = 0
        end
        d2 = d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11
        d2 = 11 - (mod(d2,11))
        if d2>=10
            d2 = 0
        end
    
            return "#{n1}#{n2}#{n3}#{n4}#{n5}#{n6}#{n7}#{n8}#{n9}#{d1}#{d2}"
    end
    def cnpj
        n = 9
        n1 = gera_random(n)
        n2 = gera_random(n)
        n3 = gera_random(n)
        n4 = gera_random(n)
        n5 = gera_random(n)
        n6 = gera_random(n)
        n7 = gera_random(n)
        n8 = gera_random(n)
        n9 = 0
        n10 = 0
        n11 = 0
        n12 = 1
        d1 = n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5
        d1 = 11 - (mod(d1,11))
        if d1 >=10
            d1 = 0
        end
        d2 = d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6
        d2 = 11 - (mod(d2,11))
        if d2>=10
            d2 = 0
        end
    
            return "#{n1}#{n2}#{n3}#{n4}#{n5}#{n6}#{n7}#{n8}#{n9}#{n10}#{n11}#{n12}#{d1}#{d2}"
        
    end

    def passaporte
        n = 9
        n1 = gera_random(n)
        n2 = gera_random(n)
        n3 = gera_random(n)
        n4 = gera_random(n)
        n5 = gera_random(n)
        n6 = gera_random(n)
        n7 = gera_random(n)
        n8 = gera_random(n)
        n9 = gera_random(n)
        return "#{n1}#{n2}#{n3}#{n4}#{n5}#{n6}#{n7}#{n8}#{n9}"
    end

    def tipo_pessoa(pessoa)
        if pessoa == 'PessoaJuridica'
            documento = cnpj
        elsif pessoa == 'Brasileiro'
            documento = cpf
        elsif pessoa == 'Estrangeiro'
            documento = passaporte
        end

        return documento

    end
end