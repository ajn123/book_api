Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  #
#  resources :books


  
  get  '/request' => "books#retrieve_request"
  get  '/request/:id' => 'books#retrieve_request'
  post '/request/' => 'books#get_book_request'
  delete '/request/:id' => 'books#delete_request'
end
