class CreateRealEstates < ActiveRecord::Migration[5.0]
  def change
    create_table :real_estates do |t|
      t.string :name, null: false
      t.integer :rent, null: false
      t.text :address
      t.date :built_at, null: false
      t.text :notes

      t.timestamps
    end
  end
end
