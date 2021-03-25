class CreateDishReview < ActiveRecord::Migration[6.1]
  def up
    create_table :dish_reviews do |t|
      t.text :review
      t.integer :rating
      t.references :dish  #foreign_key: true
      t.references :user  #foreign_key: true
    end
  end

  def down
    drop_table :dish_reviews
  end
end