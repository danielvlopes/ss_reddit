Rails.application.routes.draw do
  root to: "posts#index"

  resources :text_posts, except: [:index]
  resources :link_posts, except: [:index]

  resources :posts, only: [:index] do
    resources :votes, controller: "post_votes"
    resources :comments, only: [:create, :destroy]
  end
end
