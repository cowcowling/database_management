class HomeKindsController < ApplicationController
  before_action :set_home_kind, only: [:show, :edit, :update, :destroy]

  # GET /home_kinds
  # GET /home_kinds.json
  def index
    @home_kinds = HomeKind.all
  end

  # GET /home_kinds/1
  # GET /home_kinds/1.json
  def show
  end

  # GET /home_kinds/new
  def new
    @home_kind = HomeKind.new
  end

  # GET /home_kinds/1/edit
  def edit
  end

  # POST /home_kinds
  # POST /home_kinds.json
  def create
    @home_kind = HomeKind.new(home_kind_params)

    respond_to do |format|
      if @home_kind.save
        format.html { redirect_to @home_kind, notice: 'Home kind was successfully created.' }
        format.json { render :show, status: :created, location: @home_kind }
      else
        format.html { render :new }
        format.json { render json: @home_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_kinds/1
  # PATCH/PUT /home_kinds/1.json
  def update
    respond_to do |format|
      if @home_kind.update(home_kind_params)
        format.html { redirect_to @home_kind, notice: 'Home kind was successfully updated.' }
        format.json { render :show, status: :ok, location: @home_kind }
      else
        format.html { render :edit }
        format.json { render json: @home_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_kinds/1
  # DELETE /home_kinds/1.json
  def destroy
    @home_kind.destroy
    respond_to do |format|
      format.html { redirect_to home_kinds_url, notice: 'Home kind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_kind
      @home_kind = HomeKind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_kind_params
      params.require(:home_kind).permit(:customer_id, :marriage, :gender, :age, :income)
    end
end
