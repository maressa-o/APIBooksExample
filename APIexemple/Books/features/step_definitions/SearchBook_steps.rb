#encoding: UTF-8
Quando("buscar um livro existente pelo ID") do
  $search_book = $active_search_book.inicializa
  @get = $active_search_book.get_book($search_book_id, $search_book)
end

Entao("deve ser exibido o livro buscado") do
  @book_title = @get.parsed_response['Title']
  @response = @get.parsed_response
  puts "O status do retorno do serviço e: #{@get.code}"
  puts "O titulo do livro e: #{@book_title}"
  puts "A resposta do servico e: \n" + JSON.pretty_generate(@response)
  expect(@get.code).to eq 200
end