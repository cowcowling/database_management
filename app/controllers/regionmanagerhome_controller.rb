class RegionmanagerhomeController < ApplicationController
	def index
		branches = Branch.where(region_id: params[:regionid])
		@transactions = Transaction.where(branch_id: branches.map { |b| b.id })
		@sales_people = SalesPerson.where(branch_id: branches.map { |b| b.id })
		@store_managers = StoreManager.where(region_id: params[:regionid])
		@store_reports = []
		branches.each do |branch|
			count = Transaction.where(branch_id: branch.id).count
			total_sales = 0.0
			Transaction.where(branch_id: branch.id).each do |t|
				total_sales += Product.find(t.product_id).price * t.quantity
			end
			@store_reports << {id: branch.id, address: branch.address, transaction_count: count, total_sales: total_sales}
		end
		puts @store_reports.inspect
	end
end
