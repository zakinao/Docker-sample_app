Rails.application.routes.draw do
  root 'home#index'
  resources :boards
  resources :comments, only: [:destroy, :create]
end
