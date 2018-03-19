Rails.application.routes.draw do
  resources :prices, only: [:new, :create, :edit, :update, :destroy]
  resources :sandwiches, only: [:new, :create, :edit, :update, :destroy]
  resources :ingredients, only: [:new, :create, :edit, :update, :destroy]
  resources :sides, only: [:new, :create, :edit, :update, :destroy]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
