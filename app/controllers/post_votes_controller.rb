class PostVotesController < ApplicationController

  before_action :load_post

  def create
    @vote = @post.votes.build
    @vote.user = current_user
    @vote.score = params[:score]

    if @vote.save
      flash[:notice] = "Vote received"
    else
      flash[:error] = "Something bad happened"
    end

    redirect_to posts_path
  end

private

  def load_post
    @post = Post.find(params[:post_id])
  end

end