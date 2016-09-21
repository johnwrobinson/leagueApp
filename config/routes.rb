Rails.application.routes.draw do
  devise_for :admins
  resources :player_in_leagues
  resources :games
  resources :leagues
  resources :players
  resources :game_types
  get 'home/index'
  get 'home/admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
end
