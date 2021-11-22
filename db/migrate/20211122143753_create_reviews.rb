class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rating
      t.references :reviewee, foreign_key: { to_table: :users }
      t.references :reviewer, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
