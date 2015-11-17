# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

path = File.join(Rails.root, 'db', 'old.csv')

file = File.read(path)

file.each_line do |line|
	line = line.chop
	arr = line.gsub('"', '').split(",")
	Patient.create(id: arr[0], name_first: arr[1], name_last: arr[2], biopsy_pending: arr[3], other_pending: arr[4], cancer: arr[5], date_seen: arr[6], date_return: arr[7])
end