Rails.application.routes.draw do
  resources :prices
  resources :sandwiches
  resources :ingredients
  resources :sides
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
