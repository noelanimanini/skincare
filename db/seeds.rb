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

i1 = Ingredient.create(name: "Sodium Lauryl Sulfate", img_url: "https://www.sigmaaldrich.com/content/dam/sigma-aldrich/structure2/094/mfcd00036175.eps/_jcr_content/renditions/mfcd00036175-large.png", description: "It is a cleansing agent known for being too good at the job and potentially irritating the skin.")
i2 = Ingredient.create(name: "Formaldehyde", img_url: "https://www.sigmaaldrich.com/content/dam/sigma-aldrich/structure8/186/mfcd00003274.eps/_jcr_content/renditions/mfcd00003274-large.png", description: "A perservative It’s consisnent exposure is not safe.")
i3 = Ingredient.create(name: "Niancinamide", img_url: "https://www.sigmaaldrich.com/content/dam/sigma-aldrich/structure1/127/mfcd00006395.eps/_jcr_content/renditions/mfcd00006395-large.png", description: "A multi-functional skincare superstar with several proven benefits for the skin")
i4 = Ingredient.create(name: "Alpha Arbutin", img_url: "https://www.sigmaaldrich.com/content/dam/sigma-aldrich/structure4/091/mfcd09838262.eps/_jcr_content/renditions/mfcd09838262-large.png", description: "An optical isomer of naturally occurring arbutin (or beta-arbutin). Just like its sibling, alpha-arbutin is also a skin-brightening, depigmenting agent.")
i5 = Ingredient.create(name: "Malic acid", img_url: "https://pediaa.com/wp-content/uploads/2018/02/Difference-Between-Alpha-and-Beta-Hydroxy-Acids-1.png", description: "So malic acid is an exfoliant, that can - just like other AHAs - gently lift off the dead skin cells of your skin and make it more smooth and fresh.")
i6 = Ingredient.create(name: "Salicylic acid", img_url: "https://pediaa.com/wp-content/uploads/2018/02/Difference-Between-Alpha-and-Beta-Hydroxy-Acids-1.png", description: "It can exfoliate skin both on the surface and in the pores.")
i7 = Ingredient.create(name: "glycerin", img_url: "https://www.sigmaaldrich.com/content/dam/sigma-aldrich/structure9/117/mfcd00004722.eps/_jcr_content/renditions/mfcd00004722-large.png", description: "Not only a simple moisturizer but knows much more: keeps the skin lipids between our skin cells in a healthy (liquid crystal) state, protects against irritation, helps to restore barrier.")
i9 = Ingredient.create(name: "hyaluronic acid", img_url: "https://www.frontiersin.org/files/Articles/458280/fvets-06-00192-HTML/image_m/fvets-06-00192-g001.jpg", description: "High-molecular-weight-HA (>500 kDa) is an excellent surface hydrator, skin protectant and can act as an osmotic pump helping water-soluble actives to penetrate deeper into the skin.")

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
