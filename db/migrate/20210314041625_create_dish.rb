class CreateDish < ActiveRecord::Migration[6.1]
  def up
    create_table :dishes do |t|
      t.string :dish_id
      t.string :dish_name
      t.float :price
      t.text :description
      t.references 'restaurant'
    end
  end

  def down
    drop_table :dishes
  end
end