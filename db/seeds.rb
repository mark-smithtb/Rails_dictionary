# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def definition_create
Definition.create(word: Faker::Lorem.word, meaning: Faker::Lorem.paragraph)
end

if Definition.count < 100
  100.times.map {definition_create}
end
