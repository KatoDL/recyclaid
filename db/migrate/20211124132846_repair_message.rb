class RepairMessage < ActiveRecord::Migration[6.0]
  def change
    remove_column :buyings, :message_id
    add_reference :messages, :buying
  end
end
