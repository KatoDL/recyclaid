class MaterialsController < ApplicationController
  def index
    @materials = Material.all
    @available_materials = @materials.where(available: true)

    if params[:query].present?
      @materials = Material.search_by_name_and_description_and_location(params[:query])
    end

    @markers = @available_materials.geocoded.map do |material|
      {
        lat: material.latitude,
        lng: material.longitude,
        info_window: render_to_string(partial: "info_window", locals: { material: material })
      }
    end
  end

  def show
    # @user = User.find(params[:user_id])
    @material = Material.find(params[:id])
    @buying = Buying.new
    @buyings = @material.buyings
    @markers = [ {
        lat: @material.latitude,
        lng: @material.longitude,
        info_window: render_to_string(partial: "info_window", locals: { material: @material })
      }]
  end

  def new
    @material = Material.new
    @material.price_cents = nil
  end

  def create
    @material = Material.new(material_params)
    @material.price_cents = @material.price_cents * 100
    @material.user_id = current_user.id
    if @material.save
      redirect_to material_path(@material)
    else
      render :new
    end
  end

  def destroy
    @material = Material.find(params[:id])
    @material.destroy
    redirect_to dashboard_path
  end

  private

  def material_params
    params.require(:material).permit(:name, :description, :location, :price_cents, photos: [])
  end
end
