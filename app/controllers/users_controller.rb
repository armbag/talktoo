class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :index]
  skip_before_action :authenticate_user!, only: [:index]


  def new
    redirect_to "user_session_path"
  end

  def index
  @users = User.where(native_language: params[:native_language]) unless params[:native_language].blank?

    unless params[:tag_id].blank?
      if params[:tag_id].first.count("a-zA-Z") == 0
        @users = @users.joins(:taggings).where(taggings: {tag_id: params[:tag_id]})
        @users = @users.all.uniq.select { |u| (u.tags.ids & params[:tag_id].map(&:to_i)).size == params[:tag_id].size }
      else
        @tag = Tag.where(name: params[:tag_id].capitalize).first
        @users = @users.joins(:taggings).where(taggings: {tag_id: @tag.id})

      end
    end
  end


  def show
    @user = User.find(params[:id])
    @slots = @user.slots
    @slot = Slot.new
    @reviews = @user.received_reviews
    @review = Review.new
    @chat_room = ChatRoom.first
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
  params.require(:user).permit(:name, :bio, :avatar, :email, :native_language, :specialty, :taggings)
  end
end
