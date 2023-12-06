Rails.application.routes.draw do
  get 'tlogins/main'
  get 'tlogins/login_move'
  post 'tlogins/login'
  get 'tlogins/logout'
  resources :tsignups, only: [:index, :new, :create, :destroy]
  get 'tsignups/index'
  post "tsignups/create"
  root 'top#main'
end
