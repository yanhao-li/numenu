class CreateUser < ActiveRecord::Migration[6.1]
  def up
    create_table :users do |t|
      t.string :user_id
      t.string :phone_number
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :email_address
      t.string :password
    end
  end

  def down
    drop_table :users
  end
end
