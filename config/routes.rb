Rails.application.routes.draw do
  get 'tasks/index'
  get 'tasks/new'
  post 'tasks/create'
  patch 'tasks/:id', to: 'tasks#update'
  get 'tasks/:id', to: 'tasks#edit'
  get 'tasks/:id/edit', to: 'tasks#edit'
  get 'tasks/destroy'
  delete 'tasks/:id' ,to: 'tasks#destroy'
  #resources :tasks
  
  get 'tlogins/main'
  get 'tlogins/login_move'
  post 'tlogins/login'
  get 'tlogins/logout'
  resources :tsignups, only: [:index, :new, :create, :destroy]
  
  get 'tsignups/index'
  post "tsignups/create"
  root 'top#main'

  get 'mlogin/main'
  get 'mlogin/login'
  post 'mlogin/login'
  get 'mlogin/logout'
  
  get 'msignup/index'
  get 'msignup/new'
  post 'msignup/create'
  post 'msignup/destroy'
  #root 'msignup#index'
  resources :msignup, only: [:index, :new, :create, :destroy]
end
