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
verjonging = Category.create!(name: "Huidverjonging", show_order: 2, visible: true)
verbetering = Category.create!(name: "Huidverbetering", show_order: 3, visible: true)
verzorging = Category.create!(name: "Huidverzorging", show_order: 4, visible: true)
special = Category.create!(name: "Specials", show_order: 1, visible: true)

#Label
reiniging = Label.create!(name: "Reiniging", show_order: 1, visible: true)
serum = Label.create!(name: "Serum", show_order: 2, visible: true)
peeling = Label.create!(name: "Peeling", show_order: 3, visible: true)
scrub = Label.create!(name: "Scrub", show_order: 4, visible: false)
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
acne= Label.create!(name: "Acne", show_order: 17, visible: false)
droog= Label.create!(name: "Droge huid", show_order: 18, visible: true)
grof= Label.create!(name: "Grove poriën", show_order: 19, visible: true)
pigment= Label.create!(name: "Pigmentvlekjes", show_order: 20, visible: true)
rimpel= Label.create!(name: "Rimpelvorming", show_order: 21, visible: true)
streel= Label.create!(name: "Steelwratjes", show_order: 22, visible: true)
roken= Label.create!(name: "Rokershuid", show_order: 23, visible: true)
slap= Label.create!(name: "Verslapte huid", show_order: 24, visible: true)
vet= Label.create!(name: "Vette huid", show_order: 25, visible: true)
stress= Label.create!(name: "Gestresste huid", show_order: 26, visible: true)
rood= Label.create!(name: "Rode adertjes", show_order: 27, visible: true)
arm= Label.create!(name: "Vochtarme huid", show_order: 28, visible: true)
moe= Label.create!(name: "Stress en vermoeidheid", show_order: 29, visible: true)
gerst= Label.create!(name: "Gerstekorrels", show_order: 30, visible: true)
over= Label.create!(name: "Overbeharing", show_order: 31, visible: true)
rosa= Label.create!(name: "Rosacea", show_order: 32, visible: true)

#Product
pascaud = Product.create!(name: "Pascaud", show_order: 4, visible: true)
grandel = Product.create!(name: "Dr. Grandel", show_order: 3, visible: true)
colline = Product.create!(name: "La Colline", show_order: 1, visible: true)
murad = Product.create!(name: "Murad", show_order: 2, visible: true)
beauty = Product.create!(name: "Beauty Supps", show_order: 5, visible: true)
praktijk = Product.create!(name: "Van het huis", show_order: 6, visible: true)

#Treatment
Treatment.create!([
  { name: "La Colline anti aging", show_order: 1, visible: true, product: colline, labels: [anti, gezicht], categories: [verjonging, verzorging] },
  { name: "Murad new skin", show_order: 2, visible: true, product: murad, labels: [anti, gezicht], categories: [verjonging, verbetering, verzorging] },
  { name: "Pascaud basis peeling", show_order: 6, visible: true, product: pascaud, labels: [gezicht, peeling, anti], categories: [verjonging, verbetering] },
  { name: "Pascaud TCA peeling", show_order: 7, visible: true, product: pascaud, labels: [gezicht, peeling, anti], categories: [verjonging, verbetering] },
  { name: "Mesotherapie", show_order: 3, visible: true, product: pascaud, labels: [anti, meso, gezicht], categories: [verjonging, verbetering] },
  { name: "Cold laser", show_order: 4, visible: true, product: pascaud, labels: [anti, laser, gezicht], categories: [verjonging] },
  { name: "LED Lichttherapie", show_order: 5, visible: true, product: pascaud, labels: [anti, licht, gezicht], categories: [verjonging, verbetering] },
  { name: "Pascaud treatment", show_order: 8, visible: true, product: pascaud, labels: [gezicht, serum, wellness], categories: [verbetering, verzorging] },
  { name: "Permanente make up", show_order: 9, visible: true, product: praktijk, labels: [gezicht, makeup, wellness], categories: [special] },
  { name: "Huidtherapie", show_order: 10, visible: true, product: praktijk, labels: [gezicht, lichaam, ontharing, reiniging], categories: [special] },
  { name: "Supplementen", show_order: 11, visible: true, product: beauty, labels: [voeding, lichaam, supplement], categories: [special] },
  { name: "Skin Analyzer", show_order: 12, visible: true, product: praktijk, labels: [gezicht, lichaam], categories: [special] },
  { name: "Pedicure", show_order: 13, visible: true, product: praktijk, labels: [lichaam], categories: [special] },
  { name: "Bindweefel massage", show_order: 14, visible: true, product: praktijk, labels: [gezicht], categories: [special] }
])


puts "There are now #{Category.count} categories in the database"
puts "There are now #{Label.count} labels in the database"
puts "There are now #{Product.count} products in the database"
puts "There are now #{ProductFeature.count} features in the database"
puts "There are now #{Treatment.count} treatments in the database"
puts "There are now #{TreatmentItem.count} treatment items in the database"
puts "There are now #{Treatment.joins(:categories).count} categories treatments in the database"
puts "There are now #{Treatment.joins(:labels).count} label treatments in the database"
