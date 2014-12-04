class RegionmanagerhomeController < ApplicationController
	def index
		branches = Branch.where(region_id: params[:regionid])
		@transactions = Transaction.where(branch_id: branches.map { |b| b.id })
		@sales_people = SalesPerson.where(branch_id: branches.map { |b| b.id })
		@store_managers = StoreManager.where(region_id: params[:regionid])
	end
end
