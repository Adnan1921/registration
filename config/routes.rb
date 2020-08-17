Rails.application.routes.draw do
  get 'home/index'
  root to: 'partners#index'
  resources :users
  resources :cars
  resources :registrations
  resources :partners
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
