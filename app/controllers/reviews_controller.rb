class ReviewsController < ApplicationController
  def new
    @user = current_user
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @user = current_user
    @review.reviewer = @user
    @reviewee = User.find(params[:user_id])
    @review.reviewee = @reviewee
    @review.save!

    redirect_to user_path(@reviewee)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
