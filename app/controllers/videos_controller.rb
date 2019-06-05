class VideosController < ApplicationController
  def show
    @user = current_user
    @chat_room = ChatRoom.first
    @video_id = params[:video_id]
    @meeting = Meeting.find(@video_id)
  end
end
