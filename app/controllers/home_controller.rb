class HomeController < ApplicationController
	def index
		if params[:Kind].nil?
			if params[:keyword]
				@products = Product.where("name LIKE ?", "%#{params[:keyword]}%")
				render "kind"
			end
		else
			@products = Product.where(Kind: params[:Kind])
			render "kind"
		end
	end
end
