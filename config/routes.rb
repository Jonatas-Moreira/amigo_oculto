Rails.application.routes.draw do
  devise_for :usuarios
  resources :sorteios
  resources :friends

  get 'hello/world'
  get 'hello/sortear'

  resources :amigos

  root 'sorteios#index'
end
