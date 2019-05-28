class UsersController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def update
  end

  def edit
  end

  private

  def user_params
  params.require(:user).permit(:name, :bio, :avatar, :email, :native_language, :specialty)
  end

end
