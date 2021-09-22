class CreateUsersalons < ActiveRecord::Migration[6.1]
  def change
    create_table :usersalons do |t|
      t.integer :user_id
      t.integer :salon_id

      t.timestamps
    end
  end
end
