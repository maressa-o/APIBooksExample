#language: pt
#utf-8

Funcionalidade: Criar um novo livro 
 
@create_book
Cenario: Criar um novo livro com sucesso
    Quando informar os dados do livro
    Entao o meu livro com o codigo informado deve ser criado com sucesso
