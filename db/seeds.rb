# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Merchant.destroy_all
Item.destroy_all


sherwood = Merchant.create(name: "Sherwood Diner", location: "Westport, CT", category: "Restaurant", description: "Sherwood Diner is a local, family-owned and operated business since 1977. Sherwood Diner has become a staple for a wide range of guests to enjoy breakfast all day, lunch & dinner. Whether it is a family outing, business lunch, or local sports team celebration, we are always here to provide a high-quality experience.", image_url: "https://i1.wp.com/06880danwoog.com/wp-content/uploads/2020/06/sherwood-diner.jpg?resize=500%2C286&ssl=1")
sherwood_mug = Item.create(merchant_id: 1, name: "Sherwood Diner Coffee Mug", category: "Drinkware", description: "Classic Sherwood diner coffee mug. 16oz", price: 12.00, image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-9/95950451_2989503474406469_5565754630333267968_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=9267fe&_nc_ohc=OX17dmygF2sAX_isSXf&_nc_ht=scontent-lga3-1.xx&oh=833e490b0a800cb8e1df2bedcd1c8219&oe=60E7C6BE")
katz = Merchant.create(name: "Katz's Delicatessen", location: "New York, NY", category: "Restaurant", description: "Katz's Delicatessen, also known as Katz's of New York City, is a kosher-style delicatessen located at 205 East Houston Street, on the southwest corner of Houston and Ludlow Streets on the Lower East Side in Manhattan, New York City. Since its founding, it has been popular among locals and tourists alike for its pastrami on rye, which is considered among New York's best.", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Lozupone_katz2.png/2560px-Lozupone_katz2.png")
katz_sweatshirt = Item.create(merchant_id: 2, name: "Katz's Hooded Sweatshirt", category: "Apparel", description: "This hooded sweatshirt is the newest addition to the Katz merchandise line.", price: 40.00, image_url: "https://d2zyb4ugwufqpc.cloudfront.net/media/catalog/product/cache/3ba5f6390a5469af17f706a3a36e4312/g/r/greuy_hoodie_front_rev.jpg")

