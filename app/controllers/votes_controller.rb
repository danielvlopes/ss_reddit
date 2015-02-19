class VotesController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @vote = @post.votes.new
    @vote.user = current_user
    @vote.save
    redirect_to :back
  end

  def destroy
  end

end
