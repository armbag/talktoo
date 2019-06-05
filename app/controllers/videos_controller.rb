class VideosController < ApplicationController
  def show
    @user = current_user
    @chat_room = ChatRoom.first
  end
end
