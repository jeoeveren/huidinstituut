# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Destroy test data
TreatmentItem.destroy_all
Treatment.destroy_all
ProductFeature.destroy_all
Product.destroy_all
Category.destroy_all
Label.destroy_all

#Category
verjonging = Category.create!(name: "Huidverjonging", show_order: 3, visible: true)
verbetering = Category.create!(name: "Huidverbetering", show_order: 1, visible: true)
verzorging = Category.create!(name: "Huidverzorging", show_order: 2, visible: true)
special = Category.create!(name: "Specials", show_order: 4, visible: true)

#Label
reiniging = Label.create!(name: "Reiniging", show_order: 1, visible: true)
serum = Label.create!(name: "Serum", show_order: 2, visible: true)
peeling = Label.create!(name: "Peeling", show_order: 3, visible: true)
scrub = Label.create!(name: "Scrub", show_order: 4, visible: true)
ampullen = Label.create!(name: "Ampullen", show_order: 5, visible: true)
supplement = Label.create!(name: "Supplement", show_order: 6, visible: true)
meso = Label.create!(name: "Mesotherapie", show_order: 7, visible: true)
licht = Label.create!(name: "Lichttherapie", show_order: 8, visible: true)
gezicht = Label.create!(name: "Gezicht", show_order: 9, visible: true)
lichaam = Label.create!(name: "Lichaam", show_order: 10, visible: true)
voeding = Label.create!(name: "Voeding", show_order: 11, visible: true)
laser = Label.create!(name: "Cold laser", show_order: 12, visible: true)
anti = Label.create!(name: "Anti aging", show_order: 13, visible: true)
makeup = Label.create!(name: "MakeUp", show_order: 14, visible: true)
wellness = Label.create!(name: "Wellness", show_order: 15, visible: true)
ontharing = Label.create!(name: "Ontharing", show_order: 16, visible: true)


#Product
pascaud = Product.create!(name: "Pascaud", show_order: 1, visible: true)
grandel = Product.create!(name: "Grandel", show_order: 2, visible: true)
colline = Product.create!(name: "La Colline", show_order: 3, visible: true)
murad = Product.create!(name: "Murad", show_order: 4, visible: true)
beauty = Product.create!(name: "Beaty Supps", show_order: 5, visible: true)
karin = Product.create!(name: "karin", show_order: 6, visible: true)

#Treatment
Treatment.create!([
  { name: "La Colline anti aging", show_order: 1, visible: true, product: colline, labels: [anti, gezicht], categories: [verjonging, verzorging] },
  { name: "Murad new skin", show_order: 2, visible: true, product: murad, labels: [anti, gezicht], categories: [verjonging, verbetering, verzorging] },
  { name: "Pascaud basis peeling", show_order: 3, visible: true, product: pascaud, labels: [gezicht, peeling, anti], categories: [verjonging, verbetering] },
  { name: "Pascaud TCA peeling", show_order: 4, visible: true, product: pascaud, labels: [gezicht, peeling, anti], categories: [verjonging, verbetering] },
  { name: "Mesotherapie", show_order: 5, visible: true, product: pascaud, labels: [anti, meso, gezicht], categories: [verjonging, verbetering] },
  { name: "Cold laser", show_order: 6, visible: true, product: pascaud, labels: [anti, laser, gezicht], categories: [verjonging] },
  { name: "LED Lichttherapie", show_order: 7, visible: true, product: pascaud, labels: [anti, licht, gezicht], categories: [verjonging, verbetering] },
  { name: "Pascaud treatment", show_order: 8, visible: true, product: pascaud, labels: [gezicht, serum, wellness], categories: [verbetering, verzorging] },
  { name: "Permanente makeup", show_order: 9, visible: true, product: karin, labels: [gezicht, makeup, wellness], categories: [verzorging, special] },
  { name: "Huidtherapie", show_order: 10, visible: true, product: karin, labels: [gezicht, lichaam, ontharing, reiniging], categories: [verzorging, special] },
  { name: "Voedingssupplementen", show_order: 11, visible: true, product: karin, labels: [voeding, lichaam, supplement], categories: [verbetering, special] }
])


puts "There are now #{Category.count} categories in the database"
puts "There are now #{Label.count} labels in the database"
puts "There are now #{Product.count} products in the database"
puts "There are now #{ProductFeature.count} features in the database"
puts "There are now #{Treatment.count} treatments in the database"
puts "There are now #{TreatmentItem.count} treatment items in the database"
puts "There are now #{Treatment.joins(:categories).count} categories treatments in the database"
puts "There are now #{Treatment.joins(:labels).count} label treatments in the database"
