class UsersController < ApplicationController
  protect_from_forgery
  def index
    @items = render json: User.all
  end

  def show
    @items = render json: User.find(params[:id])
  end

  def create
    user = User.new
    user.name = params[:name]
    user.email = params[:email]
    user.password = params[:password]
    user.save
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.password = params[:password] if params.key?(:password)
    user.name = params[:name] if params.key?(:name)
    user.save
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end
end
