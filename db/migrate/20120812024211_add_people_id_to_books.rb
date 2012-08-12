class AddPeopleIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :people_id, :integer
  end
end
