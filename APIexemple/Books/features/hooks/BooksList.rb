Before '@books_list' do
   $active = ServiceBooksList.new
end

Before '@create_book' do
   $active = ServiceCreateBook.new
end

Before '@search_book' do
   $active_search_book = ServiceSearchBook.new
end

# podem tambem existir after's
# After '@SomeTAG' do
#     #some thing
#  end
