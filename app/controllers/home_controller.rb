class HomeController < ApplicationController
	def index
		if params[:Kind].nil?
		else
			@products = Product.where(Kind: params[:Kind])
			render "kind"
		end
	end
end
