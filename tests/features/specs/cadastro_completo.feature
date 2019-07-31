#language: pt

Funcionalidade: Cadastro Completo
Como cliente 
quero realizar o cadastro completo no Onboarding

Cenario: Cadastro de um Estrangeiro
Dado que quero me cadastrar no banco
E que sou um 'Estrangeiro'
Quando realizo o cadastro completo
Entao recebo a mensagem de confirmação 'Obrigado pelo envio dos dados!'


Cenario: Cadastro de Brasileiro pelo banco
Dado que quero me cadastrar no banco
E que sou um 'Brasileiro' 
Quando realizo o cadastro completo
Entao recebo a mensagem de confirmação 'Obrigado pelo envio dos dados!'


Cenario: Cadastro de Pessoa Jurídica pelo banco
Dado que quero me cadastrar no banco
E que sou um 'PessoaJuridica' de modalidade 'Eventual_I'
Quando realizo o cadastro completo
Entao recebo a mensagem de confirmação 'Obrigado pelo envio dos dados!'






