Rails.application.routes.draw do
root 'books#index'

get '/books', to: 'books#index'

get '/books/new', to: 'books#new'

post '/create', to: 'books#create'

get '/books/:id', to: 'books#show'

get '/books/:id/edit', to: 'books#edit'

put '/books/:id', to: 'books#update'

end
