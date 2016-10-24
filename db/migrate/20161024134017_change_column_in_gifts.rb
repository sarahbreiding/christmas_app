class ChangeColumnInGifts < ActiveRecord::Migration
  def change
    change_column :gifts, :archive, :boolean, default: false
  end
end
