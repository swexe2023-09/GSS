Rails.application.routes.draw do
  resources :tsignups, only: [:index, :new, :create, :destroy]
  get 'tsignups/index'
  post "tsignups/create"
  root 'top#main'
end
