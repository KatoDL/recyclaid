class BuyingsController < ApplicationController
  before_action :set_material, only: [:show, :new, :create]

  def new
    @buying = Buying.new
  end
  def show
    @buying = Buying.find(params[:id])
    @buying.material = @material
    @message = Message.where(user: @user)
    @messages = Message.all.select { |m| m.buying_id == @buying.id }
  end


  def create
    @buying = Buying.new(buying_params)
    @buying.material = @material
    @buying.user = current_user
    if @buying.save
      redirect_to material_buying_path(@material, @buying)
    else
      redirect_to material_path(@material)
    end
  end

  def update
    @buying = Buying.find(params[:id])
    @buying.update(buying_params)
    @material = @buying.material
    @material.available = false if @buying.status == "confirmed"
    @material.save

    redirect_to dashboard_path
  end

  def destroy
    @buying = Buying.find(params[:id])
    @buying.destroy
    redirect_to dashboard_path(current_user)
  end

  private

  def set_material
    @material = Material.find(params[:material_id])
  end

  def buying_params
    params.require(:buying).permit(:message, :status)
  end
end
