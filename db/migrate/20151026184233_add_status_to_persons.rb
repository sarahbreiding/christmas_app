class AddStatusToPersons < ActiveRecord::Migration
  def change
    add_column :persons, :status, :boolean
  end
end
