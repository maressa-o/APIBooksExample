#encoding: UTF-8

# o arquivo services é resonsável por realizar as requisições na API
class ServiceCreateBook
    include HTTParty
    base_uri CONFIG['base_uri'] + $EndPoint_CreateBook # configura o endpoint da requisição GET
    format :json
    headers "Content-Type"  => "application/json"

    # inicializa as variaveis body e captura os dados do json quando necessario
    def generate_book
        json = JSON.parse(File.read('.\features\contracts\CreateBook.json')) # faz a leitura dos dados no arquivo .json criado
        json["ID"] = $book_id # passa o id randomico
        @json2 = json.to_json
    end

    # passa os parametros necessarios para a requisição GET
    def create_book(json)
        self.class.post('', :body => @json2)
    end
end