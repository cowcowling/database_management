class StoremanagerhomeController < ApplicationController
	def index
		@transactions = Transaction.where(branch_id: params[:branchid])
		@sales_people = SalesPerson.where(branch_id: params[:branchid])
	end
end
