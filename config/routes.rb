Rails.application.routes.draw do
  get 'transactions/index'
  get 'transactions/create'
  get 'transactions/new'
  get 'transactions/show'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
 
  devise_for :users
  # get 'splash/index', to: "splash#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'splash#index'
  resources :sections
  # Defines the root path route ("/")
  # root "articles#index"


end
