class AddReferenceToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :buyings, index: true
  end
end
