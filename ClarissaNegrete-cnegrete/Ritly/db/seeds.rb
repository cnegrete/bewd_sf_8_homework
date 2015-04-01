# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Creating shortcuts"
Theshortcut.create [
  {
    my_link: "http://www.generalassemb.ly",
    hash_code: "516396"
  },
  {
    my_link: "http://www.google.com|234687",
    hash_code: "234687"
  },
  {
    my_link: "http://www.bustedtees.com",
    hash_code: "093674"
  }]