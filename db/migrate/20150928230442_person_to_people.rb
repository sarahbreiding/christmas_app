class PersonToPeople < ActiveRecord::Migration
  def change
    rename_table :people, :persons
  end
end
