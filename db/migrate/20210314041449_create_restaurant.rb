class CreateRestaurant < ActiveRecord::Migration[6.1]
  def up
    create_table :restaurants do |t|
      t.string :restaurant_id
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :phone_number
      t.string :street_name
      t.string :street_number
      t.string :city
      t.string :state
      t.string :zip_code
    end
  end

  def down
    drop_table :restaurants
  end
end