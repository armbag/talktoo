class SlotsController < ApplicationController
  def new
    @slot = Slot.new
  end

  def index
    @slots = User.find(params[:id]).slots
  end

  def create
    @user = User.find(params[:user_id])
    @slot = Slot.new(slot_params)
    @slot.end = @slot.start + 15.minutes
    @slot.teacher = @user
    if @slot.save
      redirect_to user_path(@user), notice: 'slot was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @slot = Slot.find(params[:id])
    if @slot.teacher == current_user
      @slot.destroy
      redirect_to user_path(current_user), notice: 'slot was successfully deleted.'
    end
  end

  def slot_params
    params.require(:slot).permit(:start, :price, :end, :meeting_id)
  end
end
