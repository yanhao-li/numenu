class CreateDish < ActiveRecord::Migration[6.1]
  def up
    create_table :dishes do |t|
      t.string :dish_name
      t.float :price
      t.text :description
      t.references :restaurant #foreign_key: true
    end
  end

  def down
    drop_table :dishes
  end
end