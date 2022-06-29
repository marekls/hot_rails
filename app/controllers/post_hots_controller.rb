class PostHotsController < ApplicationController
  before_action :set_post_hot, only: %i[ show edit update destroy ]

  # GET /post_hots
  def index
    @post_hots = PostHot.all
  end

  # GET /post_hots/1
  def show
  end

  # GET /post_hots/new
  def new
    @post_hot = PostHot.new
  end

  # GET /post_hots/1/edit
  def edit
  end

  # POST /post_hots
  def create
    @post_hot = PostHot.new(post_hot_params)

    if @post_hot.save
      redirect_to @post_hot, notice: "Post hot was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /post_hots/1
  def update
    if @post_hot.update(post_hot_params)
      redirect_to @post_hot, notice: "Post hot was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /post_hots/1
  def destroy
    @post_hot.destroy
    redirect_to post_hots_url, notice: "Post hot was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_hot
      @post_hot = PostHot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_hot_params
      params.require(:post_hot).permit(:title, :body)
    end
end
