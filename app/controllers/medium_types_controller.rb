class MediumTypesController < ApplicationController
  before_action :set_medium_type, only: %i[ show edit update destroy ]

  # GET /medium_types or /medium_types.json
  def index
    @medium_types = MediumType.all.ordered.includes(posts: [:medium_type, :author, :labels])
  end

  # GET /medium_types/1 or /medium_types/1.json
  def show
  end

  # GET /medium_types/new
  def new
    @medium_type = MediumType.new
  end

  # GET /medium_types/1/edit
  def edit
  end

  # POST /medium_types or /medium_types.json
  def create
    @medium_type = MediumType.new(medium_type_params)

    respond_to do |format|
      if @medium_type.save
        format.html { redirect_to medium_type_url(@medium_type), notice: "Medium type was successfully created." }
        format.json { render :show, status: :created, location: @medium_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medium_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medium_types/1 or /medium_types/1.json
  def update
    respond_to do |format|
      if @medium_type.update(medium_type_params)
        format.html { redirect_to medium_type_url(@medium_type), notice: "Medium type was successfully updated." }
        format.json { render :show, status: :ok, location: @medium_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medium_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medium_types/1 or /medium_types/1.json
  def destroy
    @medium_type.destroy

    respond_to do |format|
      format.html { redirect_to medium_types_url, notice: "Medium type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medium_type
      @medium_type = MediumType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medium_type_params
      params.require(:medium_type).permit(:name)
    end
end
