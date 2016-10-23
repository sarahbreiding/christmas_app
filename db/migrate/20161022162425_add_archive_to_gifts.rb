class AddArchiveToGifts < ActiveRecord::Migration
  def change
    add_column :gifts, :archive, :boolean
  end
end
