Rails.application.routes.draw do
  devise_for :admins
  get 'pages/home'
  root to: 'pages#home'

  get 'contact', to: 'pages#contact'

  get 'menu', to: 'pages#menu'

  resources :prices, only: [:new, :create, :edit, :update, :destroy]
  resources :sandwiches, only: [:new, :create, :edit, :update, :destroy]
  resources :ingredients, only: [:new, :create, :edit, :update, :destroy]
  resources :sides, only: [:new, :create, :edit, :update, :destroy]

  root to: "home#index"
end
