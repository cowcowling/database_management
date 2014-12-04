class SessionsController < ApplicationController
	def new
	end

	def create
		id = params[:txtName]
		e = Employee.find(id.to_i)
		if e.sales_person
			redirect_to transactions_path
		end

	end
end
