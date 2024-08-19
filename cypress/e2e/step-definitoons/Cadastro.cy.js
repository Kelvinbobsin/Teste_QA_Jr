/// <reference types="cypress" />

const dados = require('../../fixtures/dados.json')

describe('Cadastro de Usuário', () => {
    
    beforeEach(() => {
        cy.visit('/')
    });

    it('Deve validar o preenchimento dos campos obrigatórios', () => {
        cy.cadastro(dados.Nome, dados.Email, dados.Telefone, dados.Cidade, dados.Nascimento)
        cy.get(':nth-child(10) > :nth-child(1)').should('contain', 'kelvin silveira')
        cy.get(':nth-child(10) > :nth-child(2)').should('contain', 'kelvin@gmail.com')
        cy.get(':nth-child(10) > :nth-child(3)').should('contain', '00000')
        cy.get(':nth-child(10) > :nth-child(4)').should('contain', '17/08/2024')
        cy.get(':nth-child(10) > :nth-child(5)').should('contain', 'cachoeirinha')
        cy.get(':nth-child(10) > :nth-child(6)').should('contain', 'Compliance')
    });

    it('Cadastro de um novo usuário com campos obrigatórios ausentes', () => {
        cy.get('#new-user').contains('Novo Usuário').click()
        cy.get('.sc-eCImPb > button').click()
        cy.get('[placeholder="Nome"]').should('be.visible')
    });

    it('Cadastro de um novo usuário com um e-mail inválido', () => {
        cy.cadastroInvalido(dados.Nome,'00000000000', dados.Telefone, dados.Cidade, dados.Nascimento)
        cy.get(':nth-child(15) > :nth-child(2)').should('contain', '00000000000')
    });

    it.only('Cadastro de um usuário com um formato de telefone inválido', () => {
        cy.telefoneInvalido(dados.Nome,dados.Email, '00000', dados.Cidade, dados.Nascimento)
        cy.get(':nth-child(9) > :nth-child(3)').should('contain', '00000')
    });

    it.only('Cadastro de um usuário com um formato de data inválido', () => {
        cy.dataInvalida(dados.Nome,dados.Email, dados.Telefone, dados.Cidade, '1111-10-08')
        cy.get(':nth-child(6) > :nth-child(4)').should('contain','08/10/1111')
    });

});




 