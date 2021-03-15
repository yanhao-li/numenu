class RemoveRedundantIds < ActiveRecord::Migration[6.1]
  def change
    change_table :users do |t|
      t.remove :user_id
    end

    change_table :restaurants do |t|
      t.remove :restaurant_id
    end

    change_table :restaurant_reviews do |t|
      t.remove :restaurant_review_id
    end

    change_table :dish_reviews do |t|
      t.remove :dish_review_id
    end

    change_table :dishes do |t|
      t.remove :dish_id
    end
  end
end
