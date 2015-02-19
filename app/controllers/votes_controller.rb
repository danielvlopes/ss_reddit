class VotesController < ApplicationController
  def create
    votable_id = params[:vote][:votable_id]
    post = Post.find(votable_id)
    vote = post.votes.new(user: current_user)
    if vote
      vote.save
    else
      vote = Vote.find(user: current_user, votable_id: votable_id)
      vote.like = params[:vote][:like]
    end
    redirect_to root_url
  end

  def destroy
  end

  private

    def vote_params
      params.require(:vote).permit(:like)
    end
end
