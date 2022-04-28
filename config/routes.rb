Rails.application.routes.draw do
  get 'pages/home'
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show]

  get '/login', to: 'sessions#login', as: :login
  post '/login', to: 'sessions#create', as: :logging
  delete '/logout', to: 'sessions#destroy', as: :logout
end
