#encoding: UTF-8
Quando ("eu solicitar a lista de livros") do
  $test_books = $active.inicializa
  @get = $active.get_list($test_books)
end

Entao("todos os {int} livros existentes devem ser exibidos") do |int|
  @list_lenght = int
  puts "O Codigo de retorno da requisicao e: #{@get.code()} e o esperado e: 200"
  expect(@get.code).to eq(200)
  @json_size = JSON.parse(@get.to_s).size
  expect(@json_size).to eq(@list_lenght)
end

