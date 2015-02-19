class PostsController < ApplicationController

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    votes = Vote.all
    @likes = 0
    votes.each do |vote|
      @likes += vote.like
    end
  end
end
