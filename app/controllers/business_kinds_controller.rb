class BusinessKindsController < ApplicationController
  before_action :set_business_kind, only: [:show, :edit, :update, :destroy]

  # GET /business_kinds
  # GET /business_kinds.json
  def index
    @business_kinds = BusinessKind.all
  end

  # GET /business_kinds/1
  # GET /business_kinds/1.json
  def show
  end

  # GET /business_kinds/new
  def new
    @business_kind = BusinessKind.new
  end

  # GET /business_kinds/1/edit
  def edit
  end

  # POST /business_kinds
  # POST /business_kinds.json
  def create
    @business_kind = BusinessKind.new(business_kind_params)

    respond_to do |format|
      if @business_kind.save
        format.html { redirect_to @business_kind, notice: 'Business kind was successfully created.' }
        format.json { render :show, status: :created, location: @business_kind }
      else
        format.html { render :new }
        format.json { render json: @business_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_kinds/1
  # PATCH/PUT /business_kinds/1.json
  def update
    respond_to do |format|
      if @business_kind.update(business_kind_params)
        format.html { redirect_to @business_kind, notice: 'Business kind was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_kind }
      else
        format.html { render :edit }
        format.json { render json: @business_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_kinds/1
  # DELETE /business_kinds/1.json
  def destroy
    @business_kind.destroy
    respond_to do |format|
      format.html { redirect_to business_kinds_url, notice: 'Business kind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_kind
      @business_kind = BusinessKind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_kind_params
      params.require(:business_kind).permit(:customer_id, :category, :gross, :income)
    end
end
