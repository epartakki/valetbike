class CreateStations < ActiveRecord::Migration[6.1]
  def change
    create_table :stations do |t|
      t.integer :identifier
      t.string  :name
      t.string  :address_line1
      t.string  :address_city
      t.string  :address_state
      t.string  :address_country
      t.integer :total_slots
      t.integer :available_slots
      t.integer :lng
      t.integer :lat

      t.timestamps
    end
  end
end
