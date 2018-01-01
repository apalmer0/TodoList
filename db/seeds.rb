# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.create([
  { content: 'walk the dog', due: '2018-01-01 14:36:00' },
  { content: 'feed the hog', due: '2018-01-02 14:36:00' },
  { content: 'paint the house', due: '2018-01-03 14:36:00' },
  { content: 'build an app', due: '2018-01-02 14:36:00' },
  { content: 'wash the car', due: '2018-01-04 14:36:00' },
  { content: 'learn swahili', due: '2018-01-05 14:36:00' },
  { content: 'buy plane tickets', due: '2018-01-10 14:36:00' },
])
