# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Product.all.each do |product|
#     IngredientProduct.create(product_id: product.id, ingredient_id: ingredient.id)
# end 
Review.destroy_all
IngredientProduct.destroy_all
Product.destroy_all
Brand.destroy_all
Ingredient.destroy_all
User.destroy_all

u1 = User.create(name: "Jason", password_digest: "string")

i1 = Ingredient.create(name: "Sodium Lauryl Sulfates")
i2 = Ingredient.create(name: "Copper Tripeptide-1")
i3 = Ingredient.create(name: "Niancinamide")
i4 = Ingredient.create(name: "Alpha Arbutin")
i5 = Ingredient.create(name: "alpha-hydroxy acid")
i6 = Ingredient.create(name: "beta-hydroxy acid")
i7 = Ingredient.create(name: "glycerin")
i8 = Ingredient.create(name: "glycerol")
i9 = Ingredient.create(name: "hyaluronic acid")
i10 = Ingredient.create(name: "Argon Oil")

a1 = Brand.create(name: "Bobby Brown")
a2 = Brand.create(name: "Revlon")
a3 = Brand.create(name: "Maybelline")
a4 = Brand.create(name: "elf")
a5 = Brand.create(name: "nyx")

p1 = Product.create(brand_id: Brand.all.sample.id, name: "Bobby Brown Mascara", category: "mascara", description: "this is mascara")

ip1 = IngredientProduct.create(product_id: Product.all.sample.id, ingredient_id: Ingredient.all.sample.id)

10.times do
 Review.create(comment: "text", rating: rand(1..5), user_id: User.all.sample.id, product_id: Product.all.sample.id)
end 



# b6 = Brand.create(name: "Urban Decay")
# b7 = Brand.create(name: "Morphe")
# b8 = Brand.create(name: "Anastasia")
# b9 = Brand.create(name: "Colourpop")
# b10 = Brand.create(name: "Milk")


puts "done"
