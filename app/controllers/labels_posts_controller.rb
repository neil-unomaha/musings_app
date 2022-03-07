class LabelsPostsController < ApplicationController
  before_action :set_labels_post, only: %i[ show edit update destroy ]

  # GET /labels_posts or /labels_posts.json
  def index
    @labels_posts = LabelsPost.all
  end

  # GET /labels_posts/1 or /labels_posts/1.json
  def show
  end

  # GET /labels_posts/new
  def new
    @labels_post = LabelsPost.new
  end

  # GET /labels_posts/1/edit
  def edit
  end

  # POST /labels_posts or /labels_posts.json
  def create
    @labels_post = LabelsPost.new(labels_post_params)

    respond_to do |format|
      if @labels_post.save
        format.html { redirect_to labels_post_url(@labels_post), notice: "Labels post was successfully created." }
        format.json { render :show, status: :created, location: @labels_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @labels_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /labels_posts/1 or /labels_posts/1.json
  def update
    respond_to do |format|
      if @labels_post.update(labels_post_params)
        format.html { redirect_to labels_post_url(@labels_post), notice: "Labels post was successfully updated." }
        format.json { render :show, status: :ok, location: @labels_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @labels_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /labels_posts/1 or /labels_posts/1.json
  def destroy
    @labels_post.destroy

    respond_to do |format|
      format.html { redirect_to labels_posts_url, notice: "Labels post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_labels_post
      @labels_post = LabelsPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def labels_post_params
      params.require(:labels_post).permit(:label_id, :post_id)
    end
end
