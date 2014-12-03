class StoreManagersController < ApplicationController
  before_action :set_store_manager, only: [:show, :edit, :update, :destroy]

  # GET /store_managers
  # GET /store_managers.json
  def index
    @store_managers = StoreManager.all
  end

  # GET /store_managers/1
  # GET /store_managers/1.json
  def show
  end

  # GET /store_managers/new
  def new
    @store_manager = StoreManager.new
  end

  # GET /store_managers/1/edit
  def edit
  end

  # POST /store_managers
  # POST /store_managers.json
  def create
    @store_manager = StoreManager.new(store_manager_params)

    respond_to do |format|
      if @store_manager.save
        format.html { redirect_to @store_manager, notice: 'Store manager was successfully created.' }
        format.json { render :show, status: :created, location: @store_manager }
      else
        format.html { render :new }
        format.json { render json: @store_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_managers/1
  # PATCH/PUT /store_managers/1.json
  def update
    respond_to do |format|
      if @store_manager.update(store_manager_params)
        format.html { redirect_to @store_manager, notice: 'Store manager was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_manager }
      else
        format.html { render :edit }
        format.json { render json: @store_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_managers/1
  # DELETE /store_managers/1.json
  def destroy
    @store_manager.destroy
    respond_to do |format|
      format.html { redirect_to store_managers_url, notice: 'Store manager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_manager
      @store_manager = StoreManager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_manager_params
      params.require(:store_manager).permit(:employee_id, :branch_id, :region_id)
    end
end
