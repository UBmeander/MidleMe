class CreateMidlemes < ActiveRecord::Migration
  def change
    create_table :midlemes do |t|
      t.integer :location_id
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
