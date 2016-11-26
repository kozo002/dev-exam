class CreateNearStations < ActiveRecord::Migration[5.0]
  def change
    create_table :near_stations do |t|
      t.string :name, null: false
      t.string :line_name, null: false
      t.integer :take_minutes, null: false
      t.integer :real_estate_id, null: false

      t.timestamps
    end
  end
end
