class MaterialsController < ApplicationController
  def index
    @materials = Material.all
    if params[:query].present?
      sql_query = " \
        materials.name @@ :query \
        OR materials.description @@ :query \
        OR materials.location @@ :query \
      "
      @materials = Material.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @materials = Material.all
    end
  end

  def show
    @material = Material.find(params[:id])
  end

  def new
    @material = Material.new
  end

  def create
    @material = Material.new(material_params)
    @material.user_id = current_user.id
    if @material.save
      redirect_to material_path(@material)
    else
      render :new
    end
  end

  private

  def material_params
    params.require(:material).permit(:name, :description, :location, :price, photos: [])
  end
end
