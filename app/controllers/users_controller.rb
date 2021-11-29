class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @review = Review.new
    @form_seller = true
    @form_buyer = true
  end
end
