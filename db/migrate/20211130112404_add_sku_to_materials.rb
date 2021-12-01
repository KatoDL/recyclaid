class AddSkuToMaterials < ActiveRecord::Migration[6.0]
  def change
    add_column :materials, :sku, :string
  end
end
