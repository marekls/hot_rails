class PostHottersController < ApplicationController
  before_action :set_post_hotter, only: %i[ show edit update destroy ]

  # GET /post_hotters
  def index
    @post_hotters = PostHotter.all
  end

  # GET /post_hotters/1
  def show
  end

  # GET /post_hotters/new
  def new
    @post_hotter = PostHotter.new
  end

  # GET /post_hotters/1/edit
  def edit
  end

  # POST /post_hotters
  def create
    @post_hotter = PostHotter.new(post_hotter_params)

    if @post_hotter.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to @post_hotter, notice: "Post hotter was successfully created." }
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /post_hotters/1
  def update
    if @post_hotter.update(post_hotter_params)
      redirect_to @post_hotter, notice: "Post hotter was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /post_hotters/1
  def destroy
    @post_hotter.destroy
    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to post_hotters_url, notice: "Post hotter was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_hotter
      @post_hotter = PostHotter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_hotter_params
      params.require(:post_hotter).permit(:title, :body)
    end
end
