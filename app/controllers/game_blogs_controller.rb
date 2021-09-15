class GameBlogsController < ApplicationController
  before_action :set_game_blog, only: %i[ show edit update destroy ]

  # GET /game_blogs or /game_blogs.json
  def index
    @game_blogs = GameBlog.all
  end

  # GET /game_blogs/1 or /game_blogs/1.json
  def show
  end

  # GET /game_blogs/new
  def new
    @game_blog = GameBlog.new
  end

  # GET /game_blogs/1/edit
  def edit
  end

  # POST /game_blogs or /game_blogs.json
  def create
    @game_blog = GameBlog.new(game_blog_params)

    respond_to do |format|
      if @game_blog.save
        format.html { redirect_to @game_blog, notice: "Game blog was successfully created." }
        format.json { render :show, status: :created, location: @game_blog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_blogs/1 or /game_blogs/1.json
  def update
    respond_to do |format|
      if @game_blog.update(game_blog_params)
        format.html { redirect_to @game_blog, notice: "Game blog was successfully updated." }
        format.json { render :show, status: :ok, location: @game_blog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_blogs/1 or /game_blogs/1.json
  def destroy
    @game_blog.destroy
    respond_to do |format|
      format.html { redirect_to game_blogs_url, notice: "Game blog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_blog
      @game_blog = GameBlog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_blog_params
      params.require(:game_blog).permit(:name)
    end
end
