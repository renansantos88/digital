#language: pt


Funcionalidade: Cadastro Inicial


Esquema do Cenário: Tentativa de Cadastro com um documento inválido
Dado que estou no site '<site>'
E que sou uma Pessoa '<pessoa>' com o documento '<documento>'
Quando tento fazer o meu cadastro
Entao devo ver a mensagem "<mensagem>" 

Exemplos:

    |site       |pessoa         |documento      |mensagem                   |
    |Corretora  |PessoaJuridica |1234567890123  |Número inválido            |
    |Banco      |Brasileiro     |1234567890     |Número inválido            |
    |Banco      |Estrangeiro    |290123         |Número inválido            |
        

Esquema do Cenário: Tentativa de cadastro Corretora

        Dado que eu tenho o seguinte cadastro em 'Corretora'
            |numero|<numero>|
            |contato|<contato>|
            |email|<email>|
            |celular|<celular>|
            |comercial_responsavel|<comercial_responsavel>|
        Quando tento fazer o meu cadastro
        Então devo ver a mensagem "<mensagem>" 
        E o botao Proximo desabilitado
        
        Exemplos:
        | numero         | contato     | email           | celular       | comercial_responsavel | mensagem                  |
        | 97061718000120 | T           | email@email.com | 5519999400738 | Comercial Teste       | Muito curto               |
        | 9706171800012  | T           | email@email.com | 5519999400738 | Comercial Teste       | Muito curto               |
        | 74375248000173 | Renan Teste | emailemail.com  | 5519999400738 | Comercial Teste       | E-mail inválido           |
        | 98866122000160 | Renan Teste | email@email.com | 55132313      | Comercial Teste       | Número inválido           |
        | 75297561000101 | Renan Teste | email@email.com | 5519999400738 | C                     | Muito curto               |
        | 75297561000101 | Renan Teste | email@email.com | 5519999400738 |                       | Preenchimento obrigatório |
        | 97061718000120 |             | email@email.com | 5519999400738 | Comercial Teste       | Preenchimento obrigatório |
        | 74375248000173 | Renan Teste |                 | 5519999400738 | Comercial Teste       | Preenchimento obrigatório |
        | 12011576000133 | Renan Teste | email@email.com |               | Comercial Teste       | Preenchimento obrigatório |
        

    Esquema do Cenário: Tentativa de cadastro Banco

        Dado que eu tenho o seguinte cadastro em 'Banco'
            |numero|<numero>  |
            |contato|<contato>|
            |email|<email>    |
            |pais |<pais>     |
            |celular|<celular>|
            |comercial_responsavel|<comercial_responsavel>|
        Quando tento fazer o meu cadastro 
        Então devo ver a mensagem "<mensagem>" 
        E o botao Proximo desabilitado

        Exemplos:
        | numero        | contato     | email           | pais     |celular       | comercial_responsavel | mensagem                  |
        | 970617180     | T           | email@email.com | Alemanha |5519999400738 | Comercial Teste       | Muito curto               |
        | 970           | T           | email@email.com | Alemanha |5519999400738 | Comercial Teste       | Muito curto               |
        | 7437524800    | Renan Teste | emailemail.com  | Alemanha |5519999400738 | Comercial Teste       | E-mail inválido           |
        | 98866122000   | Renan Teste | email@email.com | Alemanha |55132         | Comercial Teste       | Número inválido           |
        | 752975610001  | Renan Teste | email@email.com | Alemanha |5519999400738 | C                     | Muito curto               |
        | 752975610101  | Renan Teste | email@email.com | Alemanha |5519999400738 |                       | Preenchimento obrigatório |
        | 970617000120  |             | email@email.com | Alemanha |5519999400738 | Comercial Teste       | Preenchimento obrigatório |
        | 743748000173  | Renan Teste |                 | Alemanha |5519999400738 | Comercial Teste       | Preenchimento obrigatório |
        | 121576000133  | Renan Teste | email@email.com | Alemanha |              | Comercial Teste       | Preenchimento obrigatório |
        | 011576000133  | Renan Teste | email@email.com |          |5519999400738 | Comercial Teste       | Preenchimento obrigatório |
        