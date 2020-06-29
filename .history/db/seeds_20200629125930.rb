# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.create(name: 'olympic swimming pool', volume: 660_000, unit: 'gallons', symbol: 'swimmer')
Item.create(name: 'tub of ice cream', volume: 16, unit: 'ounces', symbol: 'ice_cream')
Item.create(name: 'professional ice rink', volume: 10_600, unit: 'gallons', symbol: 'ice_skate')
Item.create(name: 'full oil drum', volume: 55, unit: 'gallons', symbol: 'oil_drum')
Item.create(name: 'cask of amontillado', volume: 126, unit: 'gallons', symbol: 'wine_glass')
Item.create(name: 'tank of gas', volume: 15, unit: 'gallons', symbol: 'fuelpump')
Item.create(name: 'average burrito', volume: 750, unit: 'millilitres', symbol: 'burrito')
