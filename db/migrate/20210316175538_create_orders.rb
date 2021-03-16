class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :shipping
      t.integer :total_payment
      t.integer :payment_method
      t.string :name
      t.string :postal_code
      t.strin :address
      t.integer :status

      t.timestamps
    end
  end
end
