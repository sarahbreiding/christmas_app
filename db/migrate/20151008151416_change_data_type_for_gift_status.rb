class ChangeDataTypeForGiftStatus < ActiveRecord::Migration
  def self.up
    change_column :gifts, :status, :boolean
  end

  def self.down
    change_column :gifts, :status, :string
  end
end
