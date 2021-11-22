class CreateBuyings < ActiveRecord::Migration[6.0]
  def change
    create_table :buyings do |t|
      t.string :message
      t.string :status
      t.references :material, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :message, null: false, foreign_key: true

      t.timestamps
    end
  end
end
