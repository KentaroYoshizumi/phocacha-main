class CreateLinePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :line_photos do |t|
      t.references :food, null: false, foreign_key: true
      t.references :shop, null: false, foreign_key: true
      t.references :order, foreign_key: true
      t.integer :count, null: false, default: 0
      t.boolean :active, null: false, default: false

      t.timestamps
    end
  end
end
