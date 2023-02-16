Rails.application.routes.draw do
  resources :users, only: [:index, :show, :update, :create, :destroy]
  resources :artworks, only: [:index, :show, :update, :create, :destroy]
  

  # get '/users', to: 'users#index'
  # get '/users/:id', to: 'users#show'
  # patch '/users/:id', to: 'users#update'
  # put '/users/:id', to: 'users#update'
  # post '/users', to: 'users#create'
  # delete '/users/:id', to: 'users#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
