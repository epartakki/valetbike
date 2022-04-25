class CreateStations < ActiveRecord::Migration[6.1]
  def change
    create_table :stations do |t|
      t.integer :identifier
      t.string  :name
      t.string  :address
      t.boolean :has_kiosk
      t.boolean :needs_maintenance
      t.integer :total_slots
      t.integer :available_slots
      t.decimal :lat, :precision => 16, :scale => 13
      t.decimal :lng, :precision => 16, :scale => 13

      t.timestamps
    end
  end
end
