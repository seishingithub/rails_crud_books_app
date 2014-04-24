Rails.application.routes.draw do
root 'books#index'

get '/books', to: 'books#index'

get '/books/new', to: 'books#new'

post '/create', to: 'books#create'

end
