class CreateUser < ActiveRecord::Migration[6.1]
  def up
    create_table :users do |t|
      t.string :userId
      t.string :phoneNumber
      t.string :firstName
      t.string :lastName
      t.string :city
      t.string :state
      t.string :zipCode
      t.string :emailAddress
      t.string :password
    end
  end

  def down
    drop_table :users
  end
end
