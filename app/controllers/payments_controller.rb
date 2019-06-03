class PaymentsController < ApplicationController
  before_action :set_meeting

  def new
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @meeting.amount_cents,
      description:  "Payment for the meeting : #{@meeting.id}",
      currency:     @meeting.amount.currency
    )

    @meeting.update(payment: charge.to_json, status: 'paid')
    redirect_to meeting_path(@meeting)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_meeting_payment_path(@meeting)
  end

  private

  def set_meeting
    @meeting = current_user.meetings_as_student.where(status: 'pending').find(params[:meeting_id])
  end
end
