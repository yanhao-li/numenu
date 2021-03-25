class CreateDish < ActiveRecord::Migration[6.1]
  def up
    create_table :dishes do |t|
      t.string :dish_name
      t.float :price
      t.text :description
      t.references :restaurants #foreign_key: true
    end

    add_foreign_key :dishes, :restaurants, column: :restaurants_id

  end

  def down
    drop_table :dishes
  end
end