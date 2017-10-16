Rails.application.routes.draw do

  root 'pages#index'

  resources :characters

  resources :houses

  resources :weapons

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
