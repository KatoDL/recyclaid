class UsersController < ApplicationController

  def show
  @user = User.find(params[:id])
  @materials = @user.materials
  # @reviews = []
  # @materials.each do |material|
  #   if material.review
  #     @reviews << material.review
  #   end
  # end
end
