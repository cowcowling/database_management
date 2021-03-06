class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]

  # GET /transactions
  # GET /transactions.json
  def index
    @transactions = Transaction.all
  end

  # GET /transactions/1
  # GET /transactions/1.json
  def show
  end

  # GET /transactions/new
  def new
    @transaction = Transaction.new
  end

  # GET /transactions/1/edit
  def edit
  end

  # POST /transactions
  # POST /transactions.json
  def create
    @transaction = Transaction.new(transaction_params)
    if(Product.find(@transaction.product_id).stock_amount < @transaction.quantity)
      @transaction.errors.add(:stock, "Out of Stock")
      render :new
      return
    else
      p = Product.find(@transaction.product_id)
      p.stock_amount -= @transaction.quantity
      p.sale_amount += @transaction.quantity
      p.save
    end

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to @transaction, notice: 'Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @transaction }
      else
        format.html { render :new }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transactions/1
  # PATCH/PUT /transactions/1.json
  def update
    origin_quantity = @transaction.quantity
    if(Product.find(@transaction.product_id).stock_amount < (transaction_params["quantity"].to_i - origin_quantity))
      @transaction.errors.add(:stock, "Out of Stock")
      render :edit
      return
    end
    respond_to do |format|
      if @transaction.update(transaction_params)
        updated_quantity = @transaction.quantity

        if(updated_quantity >= origin_quantity)
           
          p = Product.find(@transaction.product_id)
          p.stock_amount -= (updated_quantity - origin_quantity)
          p.sale_amount += (updated_quantity - origin_quantity)
          p.save
        else
          p = Product.find(@transaction.product_id)
          p.stock_amount += (updated_quantity - origin_quantity)
          p.sale_amount -= (updated_quantity - origin_quantity)
          p.save
        end        

        format.html { redirect_to @transaction, notice: 'Transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @transaction }
      else
        format.html { render :edit }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end

  end

  # DELETE /transactions/1
  # DELETE /transactions/1.json
  def destroy
    origin_quantity = @transaction.quantity
    @transaction.destroy
    respond_to do |format|
      p = Product.find(@transaction.product_id)
      p.stock_amount += origin_quantity
      p.sale_amount -= origin_quantity
      p.save

      format.html { redirect_to transactions_url, notice: 'Transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transaction_params
      params.require(:transaction).permit(:customer_id, :product_id, :sales_person_id, :quantity, :date, :branch_id, :paymentmethod)
    end
end
