Rails.application.routes.draw do
  root 'posts#index'

  resources :users
  resources :posts, only: [:index]
  resources :comments
end
