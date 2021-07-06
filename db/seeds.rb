# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


sherwood = Merchant.create(merchant_name: "Sherwood Diner", merchant_location: "Westport, CT", merchant_category: "Restaurant", merchant_description: "Sherwood Diner is a local, family-owned and operated business since 1977. Sherwood Diner has become a staple for a wide range of guests to enjoy breakfast all day, lunch & dinner. Whether it is a family outing, business lunch, or local sports team celebration, we are always here to provide a high-quality experience.", merchant_image_url: "https://i1.wp.com/06880danwoog.com/wp-content/uploads/2020/06/sherwood-diner.jpg?resize=500%2C286&ssl=1")
sherwood_mug = Item.create(merchant_id: 1, item_name: "Sherwood Diner Coffee Mug", item_category: "Drinkware", item_description: "Classic Sherwood diner coffee mug. 16oz", item_price: $12, item_image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-9/95950451_2989503474406469_5565754630333267968_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=9267fe&_nc_ohc=OX17dmygF2sAX_isSXf&_nc_ht=scontent-lga3-1.xx&oh=833e490b0a800cb8e1df2bedcd1c8219&oe=60E7C6BE")