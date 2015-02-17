class LinkPostsController < ApplicationController
  before_action :set_link_post, only: [:show, :edit, :update, :destroy]

  # GET /link_posts
  # GET /link_posts.json
  def index
    @link_posts = LinkPost.all
  end

  # GET /link_posts/1
  # GET /link_posts/1.json
  def show
  end

  # GET /link_posts/new
  def new
    @link_post = LinkPost.new
  end

  # GET /link_posts/1/edit
  def edit
  end

  # POST /link_posts
  # POST /link_posts.json
  def create
    @link_post = LinkPost.new(link_post_params)

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

  # PATCH/PUT /link_posts/1
  # PATCH/PUT /link_posts/1.json
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

  # DELETE /link_posts/1
  # DELETE /link_posts/1.json
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
      @link_post = LinkPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def link_post_params
      params[:link_post]
    end
end
