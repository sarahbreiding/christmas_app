class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :name
      t.string :status
      t.string :location
      t.references :person, index: true

      t.timestamps null: false
    end
  end
end
