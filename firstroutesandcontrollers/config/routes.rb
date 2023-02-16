Rails.application.routes.draw do
  resources :users, only: [:index, :show, :update, :create, :destroy]
  resources :artworks, only: [:show, :update, :create, :destroy]
  resources :artwork_shares, only: [:index, :create, :destroy]
  
  # /users/:user_id/artworks
  resources :users do
    resources :artworks
  end
  

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
