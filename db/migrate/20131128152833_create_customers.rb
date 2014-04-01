class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name, null: false, limit: 45
      t.string :email, null: false, limit: 45
      t.string :phone, null: false, limit: 45
      t.string :address, null: false, limit: 45
      t.string :city_region, null: false, limit: 2
      t.string :cc_number, null: false, limit: 19

      t.timestamps
    end
  end
end
