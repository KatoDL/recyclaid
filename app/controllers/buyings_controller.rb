class BuyingsController < ApplicationController

  def new
    @material = Material.find(params[:material_id])
    @buying = Buying.new
  end

  def create
    @buying = Buying.find

  end
end
