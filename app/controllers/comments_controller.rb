class CommentsController < ApplicationController
  before_action :set_post
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def create
    @comment = @post.comments.new(comment_params)

    if @comment.save
      redirect_to @post, notice: 'Comment was successfully created.'
    else
      render "post/show"
    end
  end

  def destroy
    @comment.destroy
    redirect_to @post, notice: 'Comment was successfully created.'
  end

  private
    def set_post
      @post = Post.find(params[:post_id])
    end

    def set_comment
      @comment = @post.comments.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:text, :user_id, :post_id)
    end
end
