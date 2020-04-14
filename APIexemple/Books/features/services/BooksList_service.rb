#encoding: UTF-8

# o arquivo services é resonsável por realizar as requisições na API
class ServiceBooksList
    include HTTParty
    base_uri CONFIG['base_uri'] + $EndPoint_BooksList # configura o endpoint da requisição GET
    format :json
    headers "Content-Type"  => "application/json"

    # inicializa as variaveis body e captura os dados do json quando necessario
    def inicializa
        @body = ""
        @json = @body.to_json
    end

    # passa os parametros necessarios para a requisição GET
    def get_list(json)
        self.class.get('', :body => @json)
    end
end

