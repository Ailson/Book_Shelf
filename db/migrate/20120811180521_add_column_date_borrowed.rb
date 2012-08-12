class AddColumnDateBorrowed < ActiveRecord::Migration
  def up
    add_column :books, :date_borrowed, :date
  end

  def down
    remove_column :books, :date_borrowed
  end
end
