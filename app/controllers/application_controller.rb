class ApplicationController < ActionController::API

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

end
