Rails.application.routes.draw do
  resources :posts
  resources :registracijes
  #get'pages/home'
  
  #devise_for :users
  devise_for :users, :controllers => {:registrations => "users/registrations"}
  #get'home/index'
  


  resources :users
  resources :cars
  resources :home
  
  root :to => redirect("/home")
  
  
  #resources :registrations
  resources :partners
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/search' => 'pages#search', :as => 'search_page'
  
  
end
