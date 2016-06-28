class Api::UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      render "api/users/show"
    else
      render json: @user.errors, status: 422
      # 422 error is an unprocessable entity.
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :name)
  end


end
