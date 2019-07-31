#language:pt

Funcionalidade: Cadastro Iniciado
Como usuário, 
Posso ter iniciado o cadastro no site, mas não dei continuidade 
Desejo dar continuidade a esse cadastro


Cenario: Retomar o cadastro iniciado anteriormente de uma Pessoa Jurídica

    Dado que sou um 'PessoaJuridica' e fiz o cadastro parcial no site de 'Corretora'
    Quando retomo esse cadastro 
    Então devo retornar na página que parei


Cenario: Retomar o cadastro iniciado anteriormente de um Brasileiro

    Dado que sou um 'Brasileiro' e fiz o cadastro parcial no site de 'Banco'
    Quando retomo esse cadastro 
    Então devo retornar na página que parei

    @parcial
Cenario: Retomar o cadastro iniciado anteriormente de um Estrangeiro

    Dado que sou um 'Estrangeiro' e fiz o cadastro parcial no site de 'Banco'
    Quando retomo esse cadastro 
    Então devo retornar na página que parei