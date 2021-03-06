class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.float :subtotal
      t.float :sales_tax
      t.float :grand_total
      t.references :user, foreign_key: true
      t.text :order_items

      t.timestamps
    end
  end
end
