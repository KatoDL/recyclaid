class ChangeReferencesOrder < ActiveRecord::Migration[6.0]
  def change
    remove_reference :orders, :buyings, index: true
    add_reference :buyings, :orders, index: true
  end
end
