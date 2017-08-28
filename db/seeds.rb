# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all()
Show.delete_all()

s1 = Show.create({
  title: 'The Great British Bake Off',
  series: 7,
  description: 'Master bakers Mary & Paul and the incomparable presenting duo of Mel & Sue are back for another interesting series about baking cakes.',
  image: 'placeholder.jpg',
  programmeID: 'b013pqnm'
   })

s2 = Show.create({
  title: 'Wynonna Earp',
  series: 2,
  description: "Wynonna Earp, the outcast great-great-granddaughter of legendary lawman Wyatt Earp, battles demons and other supernatural beings that inhabit the Ghost River Triangle, a cursed territory near the Canadian Rockies that includes Purgatory, her home town. Upon her 27th birthday, Wynonna inherited the power to use her ancestor's 16-inch barrel special 'Peacemaker' revolver. With the Peacemaker, together with a close circle of allies, she is the only one that can bring the paranormal evil to justice.",
  image: 'placeholder2.jpg',
  programmeID: 'c217wesf'
  })

User.create({
  name: "Finn",
  show: s2
  })

User.create({
  name: "Nomi",
  show: s1
  })