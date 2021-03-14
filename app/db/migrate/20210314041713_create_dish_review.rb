class CreateDishReview < ActiveRecord::Migration[6.1]
  def up
    create_table :dish_reviews do |t|
      t.string :dishReviewId
      t.string :userId
      t.string :dishName
      t.text :review
      t.integer :rating
      t.references 'dish'
      t.references 'user'
    end
  end

  def down
    drop_table :dish_reviews
  end
end