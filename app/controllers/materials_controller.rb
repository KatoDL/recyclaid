class MaterialsController < ApplicationController
    def index
      @materials = Material.all
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
