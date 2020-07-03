class UsersController < ApplicationController

	def index
    users = User.all
    render json: UserSerializer.new(users)
  end

	private 

	def user_payload(user)
    	{ user_id: user.id }
  	end

  	def current_user
    	User.find(decoded_token[0]["user_id"])
  	end

end
