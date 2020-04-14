#encoding: UTF-8

class ServiceSearchBook
  include HTTParty
  base_uri CONFIG['base_uri'] + $EndPoint_SearchBook
  format :json
  headers "Content-Type"  => "application/json"

  def inicializa
    @body = ""
    @json = @body.to_json
  end

  def get_book(id, json)
    self.class.get('/' + "#{id}", :body => @json)
  end
end