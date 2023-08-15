Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
 
  devise_for :users
  # get 'splash/index', to: "splash#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'splash#index'
  # Defines the root path route ("/")
  # root "articles#index"


end
