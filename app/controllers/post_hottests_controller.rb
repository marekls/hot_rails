class PostHottestsController < ApplicationController
  before_action :set_post_hottest, only: %i[ show edit update destroy ]

  # GET /post_hottests
  def index
    @post_hottests = PostHottest.all
  end

  # GET /post_hottests/1
  def show
  end

  # GET /post_hottests/new
  def new
    @post_hottest = PostHottest.new
  end

  # GET /post_hottests/1/edit
  def edit
  end

  # POST /post_hottests
  def create
    @post_hottest = PostHottest.new(post_hottest_params)

    if @post_hottest.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to @post_hottest, notice: "Post hottest was successfully created." }
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /post_hottests/1
  def update
    if @post_hottest.update(post_hottest_params)
      redirect_to @post_hottest, notice: "Post hottest was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /post_hottests/1
  def destroy
    @post_hottest.destroy

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to post_hottests_url, notice: "Post hottest was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_hottest
      @post_hottest = PostHottest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_hottest_params
      params.require(:post_hottest).permit(:title, :body)
    end
end
