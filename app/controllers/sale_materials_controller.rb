class SaleMaterialsController < ApplicationController
  before_action :set_sale_material, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /sale_materials
  # GET /sale_materials.json
  def index
    @sale_materials = SaleMaterial.all
  end

  # GET /sale_materials/1
  # GET /sale_materials/1.json
  def show
  end

  # GET /sale_materials/new
  def new
    @sale_material = SaleMaterial.new
    1.times {  
      @sale_material.products.build 
    }
  end

  # GET /sale_materials/1/edit
  def edit
  end

  # POST /sale_materials
  # POST /sale_materials.json
  def create
    @sale_material = SaleMaterial.new(sale_material_params)
    respond_to do |format|
      if @sale_material.save
        @sale_material.products.each do |p|
           p.material.cantidad -= p.cantidad
           p.material.save
        end
        format.html { redirect_to @sale_material, notice: 'Sale material was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sale_material }
      else
        format.html { render action: 'new' }
        format.json { render json: @sale_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sale_materials/1
  # PATCH/PUT /sale_materials/1.json
  def update
    respond_to do |format|
      if @sale_material.update(sale_material_params)
        format.html { redirect_to @sale_material, notice: 'Sale material was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sale_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sale_materials/1
  # DELETE /sale_materials/1.json
  def destroy
    @sale_material.destroy
    respond_to do |format|
      format.html { redirect_to sale_materials_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale_material
      @sale_material = SaleMaterial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_material_params
      params.require(:sale_material).permit(:nombre, :acuenta, :saldo, :total, :cantidad, products_attributes: [:id, :material_id, :sale_material_id, :cantidad, :_destroy])
    end
end
