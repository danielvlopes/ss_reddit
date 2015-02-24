Rails.application.routes.draw do

  root to: "posts#index"

  resources :text_posts, except: [:index]

  resources :posts, only: [:index] do
    resources :votes, controller: "post_votes"
  end

  # resources :comments do
  #   resources :votes, controller: "comment_votes"
  # end

end
