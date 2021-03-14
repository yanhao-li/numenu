class CreateDishReview < ActiveRecord::Migration[6.1]
  def up
    create_table :dish_reviews do |t|
      t.string :dish_review_id
      t.text :review
      t.integer :rating
      t.references :dishes
      t.references :users
    end
  end

  def down
    drop_table :dish_reviews
  end
end