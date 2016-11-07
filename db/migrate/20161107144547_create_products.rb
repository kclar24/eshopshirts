class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :size
      t.text :description
      t.integer :quantity
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
