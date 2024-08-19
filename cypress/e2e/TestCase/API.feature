#language: pt

Funcionalidade: Home Route

  Cenário: Acessar rota inicial
  Dado que a API está em execução
  Quando eu envio uma solicitação GET para "/"
  Então o código de status da resposta deve ser 200
  E o corpo da resposta deve ser '{"msg": "home"}'

Funcionalidade: User Routes

  Cenário: Obter todos os usuários
  Dado que a API está em execução
  Quando eu envio uma solicitação GET para "/api/user"
  Então o código de status da resposta deve ser 200
  E o corpo da resposta deve ser uma lista de usuários

  Cenário: Obter usuário por ID
  Dado que a API está em execução
  Quando eu envio uma solicitação GET para "/api/user/{id}" com id como 34
  Então o código de status da resposta deve ser 200
  E o corpo da resposta deve conter dados do usuário

  Cenário: Criar usuário
  Dado que a API está em execução
  Quando eu envio uma solicitação POST para "/api/user/create" com corpo
      """
      {
        "name": "kelvin bobsin",
        "e-mail": "kelvin.bobsin@gmail.com",
        "companies": [
          "Company1"
        ]
      }
      """
  Então o código de status da resposta deve ser 201
  E o corpo da resposta deve conter dados do usuário criados

  Cenário: Atualizar usuário
  Dado que a API está em execução
  Quando eu envio uma solicitação PATCH para "/api/user/{id}/update" com id como 34 e corpo
      """
      {
        "name": "Maria Eduarda",
        "e-mail": "maria.1999@gmail.com",
        "companies": [
          "Company1"
        ]
      }
      """
  Então o código de status da resposta deve ser 200
  E o corpo da resposta deve conter dados do usuário atualizados

  Cenário: Excluir usuário
  Dado que a API está em execução
  Quando eu envio uma solicitação DELETE para "/api/user/{id}/delete" com id como 34
  Então o código de status da resposta deve ser 200
  E o corpo da resposta deve confirmar a exclusão

Funcionalidade: Company Routes

  Cenário: Obter todas as empresas
  Dado que a API está em execução
  Quando eu envio uma solicitação GET para "/api/company"
  Então o código de status da resposta deve ser 200
  E o corpo da resposta deve ser uma lista de empresas

  Cenário: Obter empresa por ID
  Dado que a API está em execução
  Quando eu envio uma solicitação GET para "/api/company/{id}" com id como 1
  Então o código de status da resposta deve ser 200
  E o corpo da resposta deve conter dados da empresa

  Cenário: Criar empresa
  Dado que a API está em execução
  Quando eu envio uma solicitação POST para "/api/company/create" com corpo
      """
      {
        "name": "QA Jr",
        "cnpj": "991836547558",
        "adress": {
          "cep": "94960-250",
          "country": "Brasil",
          "city": "Cachoeirinha",
          "street_location": "ipanmea",
          "number": "335",
          "district": "Vista Alegre"
        }
      }
      """
  Então o código de status da resposta deve ser 200
  E o corpo da resposta deve conter dados da empresa criada

  Cenário: Atualizar empresa
  Dado que a API está em execução
  Quando envio uma solicitação PATCH para "/api/company/{id}/update" com id como 4 e corpo
      """
      {
        "name": "Testing QA",
        "cnpj": "787878945685",
        "adress": {
          "cep": "94945-250",
          "country": "Brasil",
          "state": "RS",
          "city": "Cachoeirinha",
          "street": "ipanema",
          "number": "442",
          "district": "Vista Alegre"
        }
      }
      """
    Então o código de status da resposta deve ser 200
    E o corpo da resposta deve conter dados atualizados da empresa

  Cenário: Excluir empresa
  Dado que a API está em execução
  Quando eu envio uma solicitação DELETE para "/api/company/{id}/delete" com id como 5
  Então o código de status da resposta deve ser 200
  E o corpo da resposta deve confirmar a exclusão