class SlotsController < ApplicationController
  skip_before_action :authenticate_user!


  def new
    @slot = Slot.new
  end

  def index
    @slots = User.find(params[:id]).slots.select do |slot|
      slot.start > DateTime.now
    end
  end

  def create
    @user = User.find(params[:user_id])
    @slot = Slot.new(slot_params)
    @slot.end = @slot.start + 15.minutes
    @slot.teacher = @user
    if @slot.save
      respond_to do |format|
        format.html { redirect_to user_path(@user) }
        format.js  # <-- will render `app/views/slots/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'users/show' }
        format.js  # <-- idem
      end
    end
  end

  def update
    @slot = Slot.find(params[:id])
    @user = User.find(params[:user_id])
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
