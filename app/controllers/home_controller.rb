class HomeController < ApplicationController
	def index
		if params[:Kind] == ""
		elsif params[:Kind] == "cell"
			@products = Product.where(Kind: "cell")
			render "cell"
		end
	end
end
