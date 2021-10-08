class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    json_response(UserSerializer.new(User.all))
  end

  def show
    json_response(UserSerializer.new(@user))
  end

  def create
    user = User.create!(user_params)

    json_response(UserSerializer.new(user))
  end

  def update
    @user.update(user_params)
    json_response(UserSerializer.new(@user))
  end

  def destroy
    @user.destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:login, :name)
  end
end
