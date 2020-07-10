class ApplicationController < ActionController::API
  before_action :authorized

  def encode_token(payload)
    JWT.encode payload, secret, 'HS256'
  end

  def secret
    'passwordsecret'
  end

  def token
    request.headers["Authorization"]
  end

  def decoded_token
    JWT.decode token, secret, true, { algorithm: 'HS256' }
  end
  
  def user_payload(user)
    { user_id: user.id }
  end

  def current_user
    User.find(decoded_token[0]["user_id"])
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: "Please log in to continue"}, status: :unauthorized unless logged_in?
  end

end
