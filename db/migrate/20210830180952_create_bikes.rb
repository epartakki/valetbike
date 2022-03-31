class CreateBikes < ActiveRecord::Migration[6.1]
  def change
    create_table :bikes do |t|
      t.string  :bike_model
      t.integer :charge
      t.string  :condition
      t.integer :current_station_id

      t.timestamps
    end
  end
end
