#encoding: UTF-8
Quando("informar os dados do livro") do
    $create_books = $active.generate_book()
    @post = $active.create_book($test_books)
end

Entao("o meu livro com o codigo informado deve ser criado com sucesso") do 
    puts "O Codigo de retorno da requisicao e: #{@post.code()} e o esperado e: 200"
    expect(@post.code).to eq(200)
    @retorno = JSON.parse(@post.body())
    puts JSON.pretty_generate(@retorno)
    @id_genereted = @post["ID"]
    puts "O livro deveria ser criado com o id #{$book_id}, e o id criado foi: #{@id_genereted}"
    expect(@id_genereted).to eq($book_id)
end