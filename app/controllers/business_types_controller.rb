class BusinessTypesController < ApplicationController

	def index
		business_types = BusinessType.all
		render json: business_types
	end
end
