class CreateRides < ActiveRecord::Migration[6.1]
  
    def change
        create_table :rides do |t|
            t.datetime  :start_time
            t.datetime  :end_time
            t.time      :duration
            t.integer   :user_id
            t.integer   :bike_id
            t.integer   :start_station_id
            t.integer   :end_station_id

            t.timestamps
        end
    end
    
end
