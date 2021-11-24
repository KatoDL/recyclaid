class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user
    @buyings = @user.buyings

    @materials = Material.where(user: @user)
    @buyings_of_your_materials = []
    @materials.each do |material|
      material.buyings.each do |buying|
        @buyings_of_your_materials << buying
      end
    end
  end
end


  # def dashboard
  #   @user = current_user
  #   @bookings = @user.bookings

  #   @toilets = Toilet.where(user: @user)
  #   @bookings_of_your_toilets = []
  #   @toilets.each do |toilet|
  #     toilet.bookings.each do |booking|
  #       @bookings_of_your_toilets << booking
  #     end
  #   end
  # end
