class LinkPostsController < ApplicationController
  before_action :set_link_post, only: [:edit, :update, :destroy]

  def show
    @link_post = LinkPost.find(params[:id])
  end

  def new
    @link_post = LinkPost.new
  end

  def edit
  end

  def create
    @link_post = LinkPost.new(link_post_params)
    @link_post.user = current_user

    respond_to do |format|
      if @link_post.save
        format.html { redirect_to @link_post, notice: 'Link post was successfully created.' }
        format.json { render :show, status: :created, location: @link_post }
      else
        format.html { render :new }
        format.json { render json: @link_post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @link_post.update(link_post_params)
        format.html { redirect_to @link_post, notice: 'Link post was successfully updated.' }
        format.json { render :show, status: :ok, location: @link_post }
      else
        format.html { render :edit }
        format.json { render json: @link_post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @link_post.destroy
    respond_to do |format|
      format.html { redirect_to link_posts_url, notice: 'Link post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link_post
      @link_post = current_user.posts.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def link_post_params
      params.require(:link_post).permit(:title, :url)
    end
end