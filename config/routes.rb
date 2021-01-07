Rails.application.routes.draw do
  resources :chemiskins
  resources :brands, only: [:index, :show]
  resources :users
  resources :ingredients, only: [:show, :index]
  resources :ingredient_products, only: [:index, :show]
  resources :reviews
  resources :products, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #Show and Edit Profile
  get '/profile', to: 'users#profile', as: 'profile'
 # get '/profile/edit', to: 'users#edit_profile', as: 'edit_profile'

 get '/', to: 'searches#home', as: 'home'
 # get '/results:q', to: 'searches#results'
 # get '/results', to: 'searches#results'

 get '/login' => 'sessions#new'
 post '/login' => 'sessions#create'
 post '/logout' => 'sessions#destroy'

end

