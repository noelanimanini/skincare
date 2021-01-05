Rails.application.routes.draw do
  resources :brands
  resources :users
  resources :ingredients
  resources :ingredient_products
  resources :reviews
  resources :products, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
