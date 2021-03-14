class CreateRestaurantReview < ActiveRecord::Migration[6.1]
  def up
    create_table :restaurant_reviews do |t|
      t.string :restaurant_review_id
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