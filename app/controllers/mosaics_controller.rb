class MosaicsController < ApplicationController
  before_action :set_mosaic, only: [:show, :edit, :update, :destroy]

  # GET /mosaics
  # GET /mosaics.json
  def index
    @mosaics = Mosaic.all
  end

  # GET /mosaics/1
  # GET /mosaics/1.json
  def show
  end

  # GET /mosaics/new
  def new
    @mosaic = Mosaic.new
  end

  # GET /mosaics/1/edit
  def edit
  end

  # POST /mosaics
  # POST /mosaics.json
  def create
    @mosaic = Mosaic.new(mosaic_params)

    respond_to do |format|
      if @mosaic.save
        format.html { redirect_to @mosaic, notice: 'Mosaic was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mosaic }
      else
        format.html { render action: 'new' }
        format.json { render json: @mosaic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mosaics/1
  # PATCH/PUT /mosaics/1.json
  def update
    respond_to do |format|
      if @mosaic.update(mosaic_params)
        format.html { redirect_to @mosaic, notice: 'Mosaic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mosaic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mosaics/1
  # DELETE /mosaics/1.json
  def destroy
    @mosaic.destroy
    respond_to do |format|
      format.html { redirect_to mosaics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mosaic
      @mosaic = Mosaic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mosaic_params
      params.require(:mosaic).permit(:tamanio, :precio, :costo)
    end
end
