class ChangeReferencesAgaind < ActiveRecord::Migration[6.0]
  def change
    remove_reference :buyings, :orders, index: true
    add_reference :orders, :buying, index: true
  end
end
