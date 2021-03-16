class CreateOrderItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :item_id
      t.integer :price
      t.integer :making_status
      t.integer :number

      t.timestamps
    end
  end
end
