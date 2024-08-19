
Funcionalidade: Cadastro de Usuário

  Cenário: Deve validar o preenchimento dos campos obrigatórios
    Dado que eu estou na página de cadastro de usuário
    Quando eu preencho o formulário com os dados válidos
    E eu clico no botão "Salvar"
    Então o usuário deve ser cadastrado com sucesso

  Cenário: Cadastro de um novo usuário com campos obrigatórios ausentes
    Dado que eu estou na página de cadastro de usuário
    Quando eu esqueço de preencher algum campo
    E eu clico no botão "Salvar"
    Então eu devo ver uma mensagem de erro "preencha este campo"

  Cenário: Cadastrar de um usuário com um e-mail inválido
    Dado que eu estou na página de cadastro de usuário
    Quando eu preencho o formulário com um email inválido
    E eu clico no botão "Salvar"
    Então eu devo ver uma mensagem de erro "O e-mail fornecido é inválido"

  Cenário: Cadastro de um usuário com um formato de telefone inválido
    Dado que eu estou na página de cadastro de usuário
    Quando eu preencho o formulário com o formato de telefone inválido
    E eu clico no botão "Cadastrar"
    Então eu devo ver uma mensagem de erro "O formato do Telefone é inválido"

  Cenário: Cadastro de um usuário com um formato de data inválido
    Dado que eu estou na página de cadastro de usuário
    Quando eu preencho o formulário com o formato de telefone inválido
    E eu clico no botão "Cadastrar"
    Então eu devo ver uma mensagem de erro "O formato da Data é inválido"
