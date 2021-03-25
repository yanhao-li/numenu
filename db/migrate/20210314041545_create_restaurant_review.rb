class CreateRestaurantReview < ActiveRecord::Migration[6.1]
  def up
    create_table :restaurant_reviews do |t|
      t.text :review
      t.integer :rating
      t.references :restaurants #foreign_key: true
      t.references :users #foreign_key: true
    end

    add_foreign_key :restaurant_reviews, :restaurants, column: :restaurants_id
    add_foreign_key :restaurant_reviews, :users, column: :users_id

  end

  def down
    drop_table :restaurant_reviews
  end
end