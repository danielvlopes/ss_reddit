Rails.application.routes.draw do

  resources :text_posts, except: [:index]
  resources :posts, only: [:index]
  resources :votes

end
