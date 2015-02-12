class VotesController < ApplicationController
  def create
    @vote = current_user.votes.build(vote_params)
    @vote.save
    redirect_to root_url
  end

  def destroy
  end

  private

    def vote_params
      params.require(:vote).permit(:like)
    end
end
