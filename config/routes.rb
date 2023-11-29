Rails.application.routes.draw do
  get 'msignup/index'
  get 'msignup/new'
  post 'msignup/create'
  post 'msignup/destroy'
  root 'msignup#index'
  resources :msignup, only: [:index, :new, :create, :destroy]
  #root 'top#main'
end
