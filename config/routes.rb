Rails.application.routes.draw do
  devise_for :admins
  get 'home/index'
  get 'home/admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  authenticate :admin do
    resources :player_in_leagues, only: [:new, :create, :edit, :update, :destroy]
    resources :games, only: [:new, :create, :edit, :update, :destroy]
    resources :leagues, only: [:new, :create, :edit, :update, :destroy]
    resources :players, only: [:new, :create, :edit, :update, :destroy]
    resources :game_types, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :player_in_leagues, only: [:index, :show]
  resources :games, only: [:index, :show]
  resources :leagues, only: [:index, :show]
  resources :players, only: [:index, :show]
  resources :game_types, only: [:index, :show]
end
