class BuyingsController < ApplicationController

  def new
    @material = Material.find(params[:material_id])
    @buying = Buying.new
  end

  def create
    @material = Material.find(params[:material_id])
    @buying = Buying.new(buying_params)
    @buying.material = @material
    @buying.user = current_user
    @buying.save!
    redirect_to material_path(@material)
  end

  private

  def buying_params
    params.require(:buying).permit(:message, :status)
  end
end
