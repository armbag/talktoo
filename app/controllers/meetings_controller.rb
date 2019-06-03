class MeetingsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @meetings_as_teacher = @user.meetings_as_student
    @meetings_as_student = @user.meetings_as_teacher
  end

  def show
  end

  def new
    @slot_id = params[:slot_id]
    @user = User.find(params[:user_id])
    @meeting = Meeting.new
  end

  def create
    slot = Slot.find(params.require(:meeting).permit(:slot_id)[:slot_id])
    @user = User.find(params[:user_id])
    @meeting = Meeting.new(meeting_params)
    @meeting.student = current_user
    if @meeting.save
      slot.update!(meeting_id: @meeting.id)
      redirect_to user_meetings_path(@user)
    else
      render 'user/show'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def meeting_params
    params.require(:meeting).permit(:student_id, :topic)
  end
end
