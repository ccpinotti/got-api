Rails.application.routes.draw do

  get 'titles/index'

  get 'titles/edit'

  get 'titles/show'

  get 'titles/delete'

  get 'titles/create'

  root 'pages#index'

  resources :characters

  resources :houses

  resources :weapons

  resources :locations

  resources :titles


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
