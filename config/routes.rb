Rails.application.routes.draw do
  resources :games
  resources :leagues
  resources :players
  resources :game_types
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
end
