# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
unless Archetype.exists?
  Archetype.create(name: 'apartment' )
  Archetype.create(name: 'house' )
  Archetype.create(name: 'condominium' )
  Archetype.create(name: 'loft' )
  Archetype.create(name: 'studio_apartment' )
  Archetype.create(name: 'homestay' )
  Archetype.create(name: 'pensionatos')
  Archetype.create(name: 'fraternity' )
end