class TextPostsController < ApplicationController
  before_action :set_text_post, only: [:show, :edit, :update, :destroy]

  # GET /text_posts
  # GET /text_posts.json
  def index
    @text_posts = TextPost.all
  end

  # GET /text_posts/1
  # GET /text_posts/1.json
  def show
  end

  # GET /text_posts/new
  def new
    @text_post = TextPost.new
  end

  # GET /text_posts/1/edit
  def edit
  end

  # POST /text_posts
  # POST /text_posts.json
  def create
    @text_post = TextPost.new(text_post_params)

    respond_to do |format|
      if @text_post.save
        format.html { redirect_to @text_post, notice: 'Text post was successfully created.' }
        format.json { render :show, status: :created, location: @text_post }
      else
        format.html { render :new }
        format.json { render json: @text_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /text_posts/1
  # PATCH/PUT /text_posts/1.json
  def update
    respond_to do |format|
      if @text_post.update(text_post_params)
        format.html { redirect_to @text_post, notice: 'Text post was successfully updated.' }
        format.json { render :show, status: :ok, location: @text_post }
      else
        format.html { render :edit }
        format.json { render json: @text_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_posts/1
  # DELETE /text_posts/1.json
  def destroy
    @text_post.destroy
    respond_to do |format|
      format.html { redirect_to text_posts_url, notice: 'Text post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text_post
      @text_post = TextPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def text_post_params
      params[:text_post]
    end
end
