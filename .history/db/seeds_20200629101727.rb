# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.create(name: 'olympic size swimming pool', volume: 660_000, unit: 'gallons', symbol: '🏊')
Item.create(name: 'iced venti latte', volume: 24, unit: 'ounces', symbol: '🥤')
Item.create(name: 'ice rink', volume: 10_600, unit: 'gallons', symbol: '⛸')
Item.create(name: 'oil drum', volume: 55, unit: 'gallons', symbol: '&#U+1F6E2;')
Item.create(name: 'cask of amontillado', volume: 126, unit: 'gallons', symbol: '🍷')
Item.create(name: 'full tank of gas', volume: 15, unit: 'gallons', symbol: '⛽')
