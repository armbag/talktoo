class ChatRoomsController < ApplicationController
  def show
    @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
  end

  def new
    @chat_room = ChatRoom.new
  end

  def create
    @user = User.find(params[:user_id]).name
    @chat_room = ChatRoom.new(chat_room_params)
    @chat_room.name = @user
    if @chat_room.save
      redirect_to chat_room_path(@chat_room_id)
    end
  end


  private

  def chat_room_params
    params.require(:chat_room).permit(:name)
  end
end
