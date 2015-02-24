class PostVotesController < ApplicationController

  before_action :load_post

  def create
    @vote = @post.votes.build
    @vote.user = current_user

    if @vote.save
      flash[:notice] = "Vote received"
    else
      flash[:error] = "Something bad happened"
    end

    redirect_to posts_path
  end

  def destroy
    @vote = current_user.votes.where(post: @post)

    if @vote.save
      flash[:notice] = "Vote removed"
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