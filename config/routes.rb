Rails.application.routes.draw do
  #get'pages/home'
  
  #devise_for :users
  devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  
  #get'home/index'
  root to: 'partners#index'
  resources :users
  resources :cars
  #resources :registrations
  resources :partners
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
