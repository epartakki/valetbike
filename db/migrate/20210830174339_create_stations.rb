class CreateStations < ActiveRecord::Migration[6.1]
  def change
    create_table :stations do |t|
      t.string  :name
      t.boolean :has_kiosk
      t.boolean :needs_maintenance
      t.integer :total_slots
      t.integer :available_slots
      t.integer :address

      t.timestamps
    end
  end
end
