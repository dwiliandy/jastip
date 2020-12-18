Rails.application.routes.draw do

	root to: 'pages#index'

  devise_for :users
  resources :notifications
  resources :transactions
  resources :products
  resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
