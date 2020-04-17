class AuthController < ApplicationController
 
  def login
     user = User.find_by(email: params[:email])
     employee = Employee.find_by(email: params[:email])
     user_authenticated = user.authenticate(params[:password])
     employee_authenticated = employee.authenticate(params[:password])

     if (user_authenticated || employee_authenticated)

       render json: { token: encode_token(user_payload(user)) }

     else
       render json: { error: "Wrong email and/or password. Sorry!" }
     end
  end

end