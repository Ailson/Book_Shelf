class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string, :name
      t.string :tel

      t.timestamps
    end
  end
end
