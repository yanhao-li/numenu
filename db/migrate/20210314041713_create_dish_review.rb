class CreateDishReview < ActiveRecord::Migration[6.1]
  def up
    create_table :dish_reviews do |t|
      t.text :review
      t.integer :rating
      t.references :dishes  #foreign_key: true
      t.references :users  #foreign_key: true
    end

  add_foreign_key :dish_reviews, :dishes, column: :dishes_id
  add_foreign_key :dish_reviews, :users, column: :users_id

  end

  def down
    drop_table :dish_reviews
  end
end