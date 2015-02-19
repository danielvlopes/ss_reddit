Rails.application.routes.draw do

  resources :text_posts, except: [:index]
  resources :posts, only: [:index] do
    resources :votes, only: [:create, :destroy]
  end

end
