// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
//
// -- This is a parent command --
// Cypress.Commands.add('login', (email, password) => { ... })
//
//
// -- This is a child command --
// Cypress.Commands.add('drag', { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add('dismiss', { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This will overwrite an existing command --
// Cypress.Commands.overwrite('visit', (originalFn, url, options) => { ... })

Cypress.Commands.add('cadastro', (Nome, Email, Telefone, Cidade, Nascimento) => {
    cy.get('#new-user').contains('Novo Usuário').click()
    cy.get('[placeholder="Nome"]').type(Nome)
    cy.get('[placeholder="Email"]').type(Email)
    cy.get('[placeholder="Telefone"]').type(Telefone)
    cy.get('[placeholder="Cidade de nascimento"]').type(Cidade)
    cy.get('[placeholder="Data de nascimento"]').type(Nascimento)
    cy.get('#search_input').click()
    cy.get('[class="option  highlightOption highlight  "]').click()
    cy.get('.ReactModal__Content').click()
    cy.get('.sc-eCImPb > button').click()
 
})

Cypress.Commands.add('cadastroInvalido', (Nome, Email, Telefone, Cidade, Nascimento) => {
    cy.get('#new-user').contains('Novo Usuário').click()
    cy.get('[placeholder="Nome"]').type(Nome)
    cy.get('[placeholder="Email"]').type(Email)
    cy.get('[placeholder="Telefone"]').type(Telefone)
    cy.get('[placeholder="Cidade de nascimento"]').type(Cidade)
    cy.get('[placeholder="Data de nascimento"]').type(Nascimento)
    cy.get('#search_input').click()
    cy.get('[class="option  highlightOption highlight  "]').click()
    cy.get('.ReactModal__Content').click()
    cy.get('.sc-eCImPb > button').click()

})

Cypress.Commands.add('telefoneInvalido', (Nome, Email, Telefone, Cidade, Nascimento) => {
    cy.get('#new-user').contains('Novo Usuário').click()
    cy.get('[placeholder="Nome"]').type(Nome)
    cy.get('[placeholder="Email"]').type(Email)
    cy.get('[placeholder="Telefone"]').type(Telefone)
    cy.get('[placeholder="Cidade de nascimento"]').type(Cidade)
    cy.get('[placeholder="Data de nascimento"]').type(Nascimento)
    cy.get('#search_input').click()
    cy.get('[class="option  highlightOption highlight  "]').click()
    cy.get('.ReactModal__Content').click()
    cy.get('.sc-eCImPb > button').click()

})


Cypress.Commands.add('dataInvalida', (Nome, Email, Telefone, Cidade, Nascimento) => {
    cy.get('#new-user').contains('Novo Usuário').click()
    cy.get('[placeholder="Nome"]').type(Nome)
    cy.get('[placeholder="Email"]').type(Email)
    cy.get('[placeholder="Telefone"]').type(Telefone)
    cy.get('[placeholder="Cidade de nascimento"]').type(Cidade)
    cy.get('[placeholder="Data de nascimento"]').type(Nascimento)
    cy.get('#search_input').click()
    cy.get('[class="option  highlightOption highlight  "]').click()
    cy.get('.ReactModal__Content').click()
    cy.get('.sc-eCImPb > button').click()

})