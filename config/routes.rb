Rails.application.routes.draw do
<<<<<<< HEAD
  
  root 'posts#index'
  resources :posts, only: [:index]
  resources :link_posts, except: [:index]
  resources :text_posts, except: [:index]
  resources :votes, only: [:create, :destroy]
  devise_for :users
=======

  resources :posts

>>>>>>> daniel
end
