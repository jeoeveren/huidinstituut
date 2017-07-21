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
index = 1
5.times do
  Category.create(
    name: Faker::Color.color_name,
    show_order: index,
    visible: Faker::Boolean.boolean
  )
  index += 1
end

#Label
index = 1
15.times do
  Label.create(
    name: Faker::Team.name,
    show_order: index,
    visible: Faker::Boolean.boolean
  )
  index += 1
end

#Product
index = 1
5.times do
  Product.create(
    name: Faker::Company.name,
    description: Populator.sentences(1..5),
    show_order: index,
    visible: Faker::Boolean.boolean
  )
  index += 1
end

#Feature
Product.all.each do |product|
  index = 1
  3.times do
    ProductFeature.create(
      product_id: product.id,
      name: Populator.words(1..5).titleize,
      description: Populator.sentences(1..10),
      show_order: index,
      visible: Faker::Boolean.boolean
    )
    index += 1
  end
end

#Treatment
Product.all.each do |product|
  index = 1
  3.times do
    Treatment.create(
      product_id: product.id,
      category_id: index,
      name: Populator.words(1..3).titleize,
      description: Populator.sentences(1..3),
      show_order: index,
      visible: Faker::Boolean.boolean
    )
    index += 1
  end
end

#TreatmentItem
Treatment.all.each do |treatment|
  index = 1
  3.times do
    TreatmentItem.create(
      treatment_id: treatment.id,
      name: Faker::Company.profession,
      description: Populator.sentences(1..3),
      duration: Populator.words(1..2),
      price: Faker::Commerce.price,
      show_order: index,
      visible: Faker::Boolean.boolean
    )
    index += 1
  end
end

Treatment.all.each do |treatment|
  index = 1
  3.times do
    label = Label.find(index)
    treatment.labels << label
    treatment.save
    index += 1
  end
end

puts "There are now #{Category.count} categories in the database"
puts "There are now #{Label.count} labels in the database"
puts "There are now #{Product.count} products in the database"
puts "There are now #{ProductFeature.count} features in the database"
puts "There are now #{Treatment.count} treatments in the database"
puts "There are now #{TreatmentItem.count} treatment items in the database"
puts "There are now #{Treatment.joins(:labels).count} label treatments in the database"
