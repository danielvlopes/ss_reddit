class VotesController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @vote = @post.votes.new
    @vote.user = current_user
    @vote.save
    flash[:notice] = "You have created a vote"
    redirect_to :back
  end

  def destroy
    @vote = Vote.find(params[:id])
    @vote.destroy
    flash[:notice] = "You have deleted a vote"
    redirect_to :back
  end

end
