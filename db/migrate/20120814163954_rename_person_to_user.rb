class RenamePersonToUser < ActiveRecord::Migration
  def up
    rename_column :books, "person_id", "user_id"
    rename_table "people", "users"
  end
  def down
     rename_table "users", "people"
     rename_column :books, "user_id", "person_id"
  end
end
