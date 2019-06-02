class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def index
    @user = User.find(params[:user_id])
    @reviews = @user.received_reviews
  end

  def create
    @user = User.find(params[:user_id])
    @review = Review.new(review_params)
    @review.reviewer_id = current_user.id
    @review.reviewed_id = @user.id
    if @review.save
      respond_to do |format|
        format.html { redirect_to user_path(@user) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'users/show' }
        format.js
      end
    end
  end

  def update
  end

  def edit
  end


  private

  def review_params
    params.require(:review).permit(:comment, :rating, :reviewed_id, :reviewer_id)
  end
end
