class AddTimestampsToAllTables < ActiveRecord::Migration[6.1]
  def change
    add_timestamps(:users, null: true)
    add_timestamps(:restaurants, null: true)
    add_timestamps(:dishes, null: true)
    add_timestamps(:dish_reviews, null: true)
    add_timestamps(:restaurant_reviews, null: true)

    change_table :users do |t|
      t.rename :email_address, :email
    end
  end
end
