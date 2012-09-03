class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :user_id
      t.string :name
      t.string :email
      t.integer :facebook_id

      t.timestamps
    end
  end
end
