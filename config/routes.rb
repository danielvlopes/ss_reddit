Rails.application.routes.draw do
  get 'votes/create'

  get 'votes/destroy'

  root 'posts#index'
  resources :posts
  resources :votes, only: [:create, :destroy]
  devise_for :users

end
