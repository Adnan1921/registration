Rails.application.routes.draw do
  resources :posts
  resources :registracijes
  #get'pages/home'
  
  #devise_for :users
  devise_for :users
  #get'home/index'


  resources :users
  resources :cars
  
  root :to => redirect("/users/sign_up")
  
  
  #resources :registrations
  resources :partners
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
