class BuyingsController < ApplicationController

  def new
    @material = Material.find(params[:material_id])
    @buying = Buying.new
  end

  def create
    @material = Material.find(params[:material_id])
    @buying = Buying.new(buying_params)
    @buying.material = @material

    if @buying.save
      redirect_to material_path
    else
      render :new
    end
  end

  private

  def buying_params
    params.require(:buying).permit(:message)
  end
end
