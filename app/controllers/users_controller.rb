class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :index]

  def new
    redirect_to "user_session_path"
  end

  def index
    @users = User.all
  end

  def show
  end

  def update
  end

  def edit
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
  params.require(:user).permit(:name, :bio, :avatar, :email, :native_language, :specialty)
  end

end
