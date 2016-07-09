Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :friends

  get 'hello/world'
  get 'hello/sortear'

  resources :amigos

  root 'hello#world'
end
