# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


(1..25).each do |index|
  Player.create name: "Name_#{index}"
end

(1..5).each do |index|
  Tournament.create name: "Tournament_#{index}"
end