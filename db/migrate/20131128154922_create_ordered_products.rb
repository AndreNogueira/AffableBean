class CreateOrderedProducts < ActiveRecord::Migration
  def change
    create_table :ordered_products do |t|

	    t.integer :customer_order_id , null: false
	    t.foreign_key :customer_orders, dependent: :destroy

	    t.integer :product_id, null: false
	    t.foreign_key :products, dependent: :destroy

	    t.integer :quantity, null: false, default: 1
      t.timestamps
    end
  end
end
