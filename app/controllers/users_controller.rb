class UsersController < ApplicationController
  def index
    @users = User.all 
    render json: @users
  end

  def create
    @user = User.new(params_user)
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: 422
    end
  end

  private
  def params_user
    params.require(:user).permit(:nickname)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
