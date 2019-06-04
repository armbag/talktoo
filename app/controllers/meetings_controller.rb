class MeetingsController < ApplicationController

  def index
    @user = current_user
    @meetings_as_teacher = @user.meetings_as_teacher
    @meetings_as_student = @user.meetings_as_student
  end

  def show
    @user = current_user
    @meeting = Meeting.find(params[:id])
  end

  def new
    @slot_id = params[:slot_id]
    @meeting = Meeting.new
  end

  def create
    slot = Slot.find(params[:meeting][:slot_id])
    @meeting = Meeting.new(meeting_params)
    @meeting.student = current_user
    @meeting.price_cents = slot.price * 100
    @meeting.status = "pending"
    if @meeting.save
      slot.update!(meeting_id: @meeting.id)
      redirect_to new_meeting_payment_path(@meeting)
    else
      render 'user/show'
    end

    # @user = User.find(params[:user_id])
    # slot.update!(meeting_id: @meeting.id)
  end

  def update
    @meeting = Meeting.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  private

  def meeting_params
    params.require(:meeting).permit(:topic)
  end
end
