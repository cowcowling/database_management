class HomekindsController < ApplicationController
  before_action :set_homekind, only: [:show, :edit, :update, :destroy]

  # GET /homekinds
  # GET /homekinds.json
  def index
    @homekinds = Homekind.all
  end

  # GET /homekinds/1
  # GET /homekinds/1.json
  def show
  end

  # GET /homekinds/new
  def new
    @homekind = Homekind.new
  end

  # GET /homekinds/1/edit
  def edit
  end

  # POST /homekinds
  # POST /homekinds.json
  def create
    @homekind = Homekind.new(homekind_params)

    respond_to do |format|
      if @homekind.save
        format.html { redirect_to @homekind, notice: 'Homekind was successfully created.' }
        format.json { render :show, status: :created, location: @homekind }
      else
        format.html { render :new }
        format.json { render json: @homekind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homekinds/1
  # PATCH/PUT /homekinds/1.json
  def update
    respond_to do |format|
      if @homekind.update(homekind_params)
        format.html { redirect_to @homekind, notice: 'Homekind was successfully updated.' }
        format.json { render :show, status: :ok, location: @homekind }
      else
        format.html { render :edit }
        format.json { render json: @homekind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homekinds/1
  # DELETE /homekinds/1.json
  def destroy
    @homekind.destroy
    respond_to do |format|
      format.html { redirect_to homekinds_url, notice: 'Homekind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homekind
      @homekind = Homekind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homekind_params
      params.require(:homekind).permit(:marriage, :gender, :age, :income)
    end
end
