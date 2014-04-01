class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, limit: 45, null: false
      t.decimal :price, :precision => 5, :scale => 2 , null: false
      t.text :description

      t.integer :category_id, null: false
      t.foreign_key :categories

      t.timestamps
    end
  end
end
