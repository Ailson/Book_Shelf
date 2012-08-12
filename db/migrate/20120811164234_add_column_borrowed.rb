class AddColumnBorrowed < ActiveRecord::Migration
  def up
    add_column :books, :borrowed, :boolean, :default => false,  :null=>false
  end

  def down
    remove_column :books, :borrowed
  end
end
