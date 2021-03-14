class CreateRestaurantReview < ActiveRecord::Migration[6.1]
  def up
    create_table :restaurant_reviews do |t|
      t.string :restaurantReviewId
      t.string :userId
      t.string :restaurantName
      t.text :review
      t.integer :rating
      t.references 'restaurant'
      t.references 'user'
    end
  end

  def down
    drop_table :restaurant_reviews
  end
end