class SessionsController < ApplicationController
	def new
	end

	def create
		id = params[:txtName]
		e = Employee.find(id)
		if e.sales_person
			redirect_to transactions_path
		elsif e.store_manager
			redirect_to storemanagerhome_index_path branchid: e.store_manager.branch_id
		elsif e.region_manager
			redirect_to regionmanagerhome_index_path regionid: e.region_manager.region_id
		end

	end
end
