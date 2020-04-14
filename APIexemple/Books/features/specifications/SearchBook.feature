#language: pt
#utf-8

Funcionalidade: Buscar um livro dentro da lista

  @search_book
  Cenario: Buscar um livro existente dentro da lista
    Quando buscar um livro existente pelo ID
    Entao deve ser exibido o livro buscado
