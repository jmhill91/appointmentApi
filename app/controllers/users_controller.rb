class UsersController < ApplicationController

	def index
    users = User.all
    render json: UserSerializer.new(users)
  end

	private 



end
