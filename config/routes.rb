Rails.application.routes.draw do
  resources :boards
  resources :comments, only: [:destroy, :create]
end
