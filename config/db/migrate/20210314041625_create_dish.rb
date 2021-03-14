class CreateDish < ActiveRecord::Migration[6.1]
  def up
    create_table :dishes do |t|
      t.string :dishId
      t.string :dishName
      t.string :restaurantName
      t.float :price
      t.text :description
      t.references 'restaurant'
    end
  end

  def down
    drop_table :dishes
  end
end