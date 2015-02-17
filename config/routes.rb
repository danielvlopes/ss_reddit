Rails.application.routes.draw do
  
  root 'posts#index'
  resources :posts, only: [:index]
  resources :link_posts, except: [:index]
  resources :text_posts, except: [:index]
  resources :votes, only: [:create, :destroy]
  devise_for :users
end
