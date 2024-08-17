
Feature: Cadastro de Usuário

  Scenario: Cadastro de um novo usuário com informações válidas
    Given que eu estou na página de cadastro de usuário
    When eu preencho o formulário com os dados válidos
    And eu clico no botão "Salvar"
    Then o usuário deve ser cadastrado com sucesso

  Scenario: Cadastro de um novo usuário com campos obrigatórios ausentes
    Given que eu estou na página de cadastro de usuário
    When eu esqueço de preencher algum campo
    And eu clico no botão "Salvar"
    Then eu devo ver uma mensagem de erro "preencha este campo"

  Scenario: Cadastro de um novo usuário com um e-mail inválido
    Given que eu estou na página de cadastro de usuário
    When eu preencho o formulário com um email inválido
    And eu clico no botão "Salvar"
    Then eu devo ver uma mensagem de erro "O e-mail fornecido é inválido"

  Scenario: Cadastro de um usuário com um formato de telefone inválido
    Given que eu estou na página de cadastro de usuário
    When eu preencho o formulário com o formato de telefone inválido
    And eu clico no botão "Cadastrar"
    Then eu devo ver uma mensagem de erro "O formato do Telefone é inválido"

