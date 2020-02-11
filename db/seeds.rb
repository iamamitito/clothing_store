# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all

12.times do |i|
  clothes = ["CAMISA PIQUÉ", "JERSEY COLOR BLOCK", "CÁRDIGAN BLAZER", "JERSEY BLACK", "CAMISA COLORES", "POLO BLANCO", "CHAQUETA VERDE", "CAMISA ESTRUCTURA", "PANTALON BEIGE", "PANTALONES A CUADROS", "CAMISA BLANCA", "JERSEY RAYADO"]
  Product.create(
    name: "#{clothes[i]}",
    price: Faker::Commerce.price.to_i,
    photo: "#{i + 1}.jpg"
  )
end
