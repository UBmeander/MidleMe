class MidlemesController < ApplicationController
  before_action :set_midleme, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search].present?
      @locations = Location.near(params[:search], 20, :order => :distance)
    else
      @locations = Location.all
    end
  end

  # GET /midlemes
  # GET /midlemes.json
  def index
    @midlemes = Midleme.all
  end

  # GET /midlemes/1
  # GET /midlemes/1.json
  def show
  end

  # GET /midlemes/new
  def new
    @midleme = Midleme.new
  end

  # GET /midlemes/1/edit
  def edit
  end

  # POST /midlemes
  # POST /midlemes.json
  def create
    @midleme = Midleme.new(midleme_params)

    respond_to do |format|
      if @midleme.save
        format.html { redirect_to @midleme, notice: 'Midleme was successfully created.' }
        format.json { render :show, status: :created, location: @midleme }
      else
        format.html { render :new }
        format.json { render json: @midleme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /midlemes/1
  # PATCH/PUT /midlemes/1.json
  def update
    respond_to do |format|
      if @midleme.update(midleme_params)
        format.html { redirect_to @midleme, notice: 'Midleme was successfully updated.' }
        format.json { render :show, status: :ok, location: @midleme }
      else
        format.html { render :edit }
        format.json { render json: @midleme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /midlemes/1
  # DELETE /midlemes/1.json
  def destroy
    @midleme.destroy
    respond_to do |format|
      format.html { redirect_to midlemes_url, notice: 'Midleme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_midleme
      @midleme = Midleme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def midleme_params
      params.require(:midleme).permit(:location_id, :latitude, :longitude)
    end
end
