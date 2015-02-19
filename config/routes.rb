Rails.application.routes.draw do

  root 'posts#index'

  resources :users
  resources :posts, only: [:index] do
    resources :votes
  end
  resources :text_posts, except: [:index]
  resources :comments
end
