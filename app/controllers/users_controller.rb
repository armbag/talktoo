class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :index]
  skip_before_action :authenticate_user!, only: :index


  def new
    redirect_to user_session_path
  end

  def index
    @users = User.all
    @users = @users.where(native_language: params[:native_language]) unless params[:native_language].blank?
  end

  def show
    @user = User.find(params[:id])
  end

  def update
  end

  def create
    @user = User.new(user_params)
    @profile.user_id = @user.id
    if @user.save
      redirect_to root_url, :notice => "You have succesfully signed up!"
    else
      render "new"
    end
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
