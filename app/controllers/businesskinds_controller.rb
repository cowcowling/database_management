class BusinesskindsController < ApplicationController
  before_action :set_businesskind, only: [:show, :edit, :update, :destroy]

  # GET /businesskinds
  # GET /businesskinds.json
  def index
    @businesskinds = Businesskind.all
  end

  # GET /businesskinds/1
  # GET /businesskinds/1.json
  def show
  end

  # GET /businesskinds/new
  def new
    @businesskind = Businesskind.new
  end

  # GET /businesskinds/1/edit
  def edit
  end

  # POST /businesskinds
  # POST /businesskinds.json
  def create
    @businesskind = Businesskind.new(businesskind_params)

    respond_to do |format|
      if @businesskind.save
        format.html { redirect_to @businesskind, notice: 'Businesskind was successfully created.' }
        format.json { render :show, status: :created, location: @businesskind }
      else
        format.html { render :new }
        format.json { render json: @businesskind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /businesskinds/1
  # PATCH/PUT /businesskinds/1.json
  def update
    respond_to do |format|
      if @businesskind.update(businesskind_params)
        format.html { redirect_to @businesskind, notice: 'Businesskind was successfully updated.' }
        format.json { render :show, status: :ok, location: @businesskind }
      else
        format.html { render :edit }
        format.json { render json: @businesskind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /businesskinds/1
  # DELETE /businesskinds/1.json
  def destroy
    @businesskind.destroy
    respond_to do |format|
      format.html { redirect_to businesskinds_url, notice: 'Businesskind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_businesskind
      @businesskind = Businesskind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def businesskind_params
      params.require(:businesskind).permit(:customer, :category, :gross, :income)
    end
end
