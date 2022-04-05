# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# https://gist.github.com/arjunvenkat/1115bc41bf395a162084
# https://levelup.gitconnected.com/quickly-seeding-a-rails-database-using-a-csv-file-8438b8b68f05

require 'csv'

csv_text = File.read(Rails.root.join('notes/station-data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

csv.each do |row|
    t = Station.new
    t.id = row['identifier']
    t.name = row['name']
    t.has_kiosk = row['has_kiosk']
    t.needs_maintenance = row['needs_maintenance']
    t.total_slots = row['dock_count']
    t.available_slots = row['docked_bike_count']
    t.address = row['address']
end

# CSV.foreach(Rails.root.join('notes/station-data.csv'), headers: true) do |row|
#     Station.create({
#         id: row["identifier"],
#         name: row["name"],
#         has_kiosk: row["has_kiosk"],
#         needs_maintenance: row["needs_maintenance"],
#         total_slots: row["dock_count"],
#         available_slots: row["docked_bike_count"],
#         address: row["address"]
#     }
#     )
# end

places = Place.create([{ name: "Northampton" }, { name: "Florence"}])
Primary.create(name:"Smith College", place: places.first)

