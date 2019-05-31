class TaggingController < ApplicationController
  before_action :set_plant, only: [:new, :create]

  def new
    @tagging = Tagging.new
  end

  def create
    @user.taggings.destroy_all
    params[:tagging][:tag_id].reject(&:blank?).each do |tag_id|
      Tagging.create!(tag_id: tag_id, user: @user)
    end


    # @tagging = Tagging.new(tagging_params)
    # @tagging.plant = @plant
    # @tagging.save!

    redirect_to users_path(user)
  end

  def destroy
    @tagging = Tagging.find(params[:id])
    @tagging.destroy!
    redirect_to users_path(user)
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def tagging_params
    params.require(:tagging).permit(:tag_id)
  end
end
