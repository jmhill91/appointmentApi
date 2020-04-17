class UsersController < ApplicationController



	private 

	def user_payload(user)
    	{ user_id: user.id }
  	end

  	def current_user
    	User.find(decoded_token[0]["user_id"])
  	end

end
