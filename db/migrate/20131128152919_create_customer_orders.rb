class CreateCustomerOrders < ActiveRecord::Migration
  def change
    create_table :customer_orders do |t|
      t.integer :confirmation_number, null: false
      t.decimal :amount, :precision => 6, :scale => 2, null: false

      t.integer :customer_id , null: false
      t.foreign_key :customers

      t.timestamps
    end
    add_index :customer_orders, :confirmation_number, :unique => true
  end
end
