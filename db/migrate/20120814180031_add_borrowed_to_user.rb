class AddBorrowedToUser < ActiveRecord::Migration
  def up
    add_column :books, :borrowed_to_user, :integer
  end

  def down
    remove_column :books, :borrowed_to_user
  end
end
