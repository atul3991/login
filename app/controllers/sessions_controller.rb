class SessionsController < ApplicationController
  protect_from_forgery
  def create
    user = User.where(email: params[:email], password: params[:password])
    if user.count>0
      render json: user.first
    else
      render json: {status: "error", message: "Invalid Credentials", code: 302}
    end
  end
end
