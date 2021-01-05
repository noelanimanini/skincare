Rails.application.routes.draw do
  resources :brands, only: [:index, :show]
  resources :users, only: [:create, :show, :new]
  resources :ingredients, only: [:show]
  resources :ingredient_products, only: [:index, :show]
  resources :reviews
  resources :products, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
