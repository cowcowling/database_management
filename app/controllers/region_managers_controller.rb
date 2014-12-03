class RegionManagersController < ApplicationController
  before_action :set_region_manager, only: [:show, :edit, :update, :destroy]

  # GET /region_managers
  # GET /region_managers.json
  def index
    @region_managers = RegionManager.all
  end

  # GET /region_managers/1
  # GET /region_managers/1.json
  def show
  end

  # GET /region_managers/new
  def new
    @region_manager = RegionManager.new
  end

  # GET /region_managers/1/edit
  def edit
  end

  # POST /region_managers
  # POST /region_managers.json
  def create
    @region_manager = RegionManager.new(region_manager_params)

    respond_to do |format|
      if @region_manager.save
        format.html { redirect_to @region_manager, notice: 'Region manager was successfully created.' }
        format.json { render :show, status: :created, location: @region_manager }
      else
        format.html { render :new }
        format.json { render json: @region_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /region_managers/1
  # PATCH/PUT /region_managers/1.json
  def update
    respond_to do |format|
      if @region_manager.update(region_manager_params)
        format.html { redirect_to @region_manager, notice: 'Region manager was successfully updated.' }
        format.json { render :show, status: :ok, location: @region_manager }
      else
        format.html { render :edit }
        format.json { render json: @region_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /region_managers/1
  # DELETE /region_managers/1.json
  def destroy
    @region_manager.destroy
    respond_to do |format|
      format.html { redirect_to region_managers_url, notice: 'Region manager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_region_manager
      @region_manager = RegionManager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def region_manager_params
      params.require(:region_manager).permit(:employee_id, :region_id)
    end
end
