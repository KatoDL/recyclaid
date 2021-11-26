class AddStatusToMaterial < ActiveRecord::Migration[6.0]
  def change
    add_column :materials, :available, :boolean, default: true
  end
end
