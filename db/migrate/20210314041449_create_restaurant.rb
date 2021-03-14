class CreateRestaurant < ActiveRecord::Migration[6.1]
  def up
    create_table :restaurants do |t|
      t.string :restaurantId
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :phoneNumber
      t.string :streetName
      t.string :streetNumber
      t.string :city
      t.string :state
      t.string :zipCode
    end
  end

  def down
    drop_table :restaurants
  end
end