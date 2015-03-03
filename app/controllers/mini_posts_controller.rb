raclass MiniPostsController < ApplicationController
  before_action :set_mini_post, only: [:show, :edit, :update, :destroy]

  # GET /mini_posts
  # GET /mini_posts.json
  def index
    @mini_posts = MiniPost.all
  end

  # GET /mini_posts/1
  # GET /mini_posts/1.json
  def show
  end

  # GET /mini_posts/new
  def new
    @mini_post = MiniPost.new
  end

  # GET /mini_posts/1/edit
  def edit
  end

  # POST /mini_posts
  # POST /mini_posts.json
  def create
    @mini_post = MiniPost.new(mini_post_params)

    respond_to do |format|
      if @mini_post.save
        format.html { redirect_to @mini_post, notice: 'Mini post was successfully created.' }
        format.json { render :show, status: :created, location: @mini_post }
      else
        format.html { render :new }
        format.json { render json: @mini_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mini_posts/1
  # PATCH/PUT /mini_posts/1.json
  def update
    respond_to do |format|
      if @mini_post.update(mini_post_params)
        format.html { redirect_to @mini_post, notice: 'Mini post was successfully updated.' }
        format.json { render :show, status: :ok, location: @mini_post }
      else
        format.html { render :edit }
        format.json { render json: @mini_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mini_posts/1
  # DELETE /mini_posts/1.json
  def destroy
    @mini_post.destroy
    respond_to do |format|
      format.html { redirect_to mini_posts_url, notice: 'Mini post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mini_post
      @mini_post = MiniPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mini_post_params
      params.require(:mini_post).permit(:content, :user_id)
    end
end
