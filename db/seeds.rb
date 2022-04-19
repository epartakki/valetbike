# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('notes/station-data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

csv.each do |row|
  t = Station.new
  t.identifier = row['identifier']
  t.name = row['name']
  # t.has_kiosk = row['has_kiosk']
  # t.needs_maintenance = row['needs_maintenance']
  # t.total_slots = row['dock_count']
  # t.available_slots = row['docked_bike_count']
  t.address = row['address']
  t.lat = 0 # row['lat']
  t.lng = 0 # row['lng']
  t.save
end

# generate random users (ALINE TASK??)
# for num in 1..10 do
#   u = User.new
#   u.username = "kevin"
#   u.password = "test"
#   u.save
# end
