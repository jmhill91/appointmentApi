Rails.application.routes.draw do
  resources :carts
  resources :products
  resources :appointments
  resources :services
  resources :employees
  resources :businesses
  resources :business_types
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
