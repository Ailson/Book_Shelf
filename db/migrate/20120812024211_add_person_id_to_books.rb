class AddPersonIdToBooks < ActiveRecord::Migration
  def up
    add_column :books, :person_id, :integer
  end
  def down
    remove_column :books, :person_id
  end
end
