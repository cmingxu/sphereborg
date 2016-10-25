# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

begin
  User.delete_all
  User.new(mobile: "13699236168", password: "13699236168", roles: ["admin"]).save
rescue  Exception => e
  puts e
end

