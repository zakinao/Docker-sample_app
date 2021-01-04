Rails.application.routes.draw do
  get 'mypage', to: 'users#me'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  root 'home#index'
  resources :users,only: [:new, :create]
  resources :boards
  resources :comments, only: [:destroy, :create]
end
