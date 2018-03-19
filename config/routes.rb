Rails.application.routes.draw do
  get 'pages/home'
  root to: 'pages#home'

  get 'about-us', to: 'pages#about'

  get 'menu', to: 'pages#menu'

  resources :prices
  resources :sandwiches
  resources :ingredients
  resources :sides
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
