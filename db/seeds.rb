# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Product.destroy_all
Funding.destroy_all
ProductFunding.destroy_all
Share.destroy_all

u1 = User.create(name: "Anthony", email: "anthony@gmail.com", address: "123 Smart St., New York, NY 11215", cc: 1234567890, password: "Antman44", interests: "Coffee at 8pm, late night coding", img_url: "https://ca.slack-edge.com/T02MD9XTF-U011R2GNU93-18e59a10dd1c-512")
u2 = User.create(name: "Anna", email: "anna@gmail.com", address: "432 Pepper St., New York, NY 11215", cc: 7987654321, password: "Anna1234", interests: "Table 1, plants, and going plastic free!", img_url: "https://ca.slack-edge.com/T02MD9XTF-U010KJG3FUG-b921e9ae0781-512")
u3 = User.create(name: "Yoan", email: "yoan@gmail.com", address: "000 Outerspace Court, New York, NY 10123", cc: 989872976, password: "Yoan1234",  interests: "Space, BBQ, and beard grooming", img_url: "https://i.imgur.com/gqre4d5.jpg")
u4 = User.create(name: "Anthony", email: "anthony9922@gmail.com", address: "123 Smart St., New York, NY 11215", cc: 1234567890, password: "Antman999", interests: "Coffee at 8pm, late night coding", img_url: "https://ca.slack-edge.com/T02MD9XTF-U011R2GNU93-18e59a10dd1c-512")



p1 = Product.create!(name: "Colgate Optic White Advanced Whitening Toothpaste", original_cost: 4.99, goal_amount: 200, start_date: "June, 15th 2020", end_date: "July, 15th 2020", summary: "About 900 million tubes of toothpaste are used annually.  Let's incentivize Colgate to take this product plastic free. ", user_id: u1.id, img_url:"https://target.scene7.com/is/image/Target/GUEST_19c84d64-f53a-4215-8ab1-e17c442611de?wid=488&hei=488&fmt=pjpeg")
p2 = Product.create!(name: "Mrs. Meyer's Multi-Surface Cleaner", original_cost: 3.99, goal_amount: 300, start_date: "June, 17th 2020", end_date: "July, 17th 2020", summary: "Mrs. Meyer's boasts eco friendy cleaning products, but what about eco friendly packaging?  There must be thousands and thousands of Mrs. Meyer's plastic bottles lining the ocean floor.", user_id: u1.id, img_url:"https://target.scene7.com/is/image/Target/GUEST_a2a7ffa4-309c-4cf6-a513-55323a477d01?wid=488&hei=488&fmt=pjpeg")
p3 = Product.create!(name: "Burt's Bees, Beeswax Lip Balm", original_cost: 3.59, goal_amount: 250, start_date: "June, 15th 2020", end_date: "July, 15th 2020", summary: "61.41 million Americans used Chapstick in 2019.  That is a LOT of plastic!  Let's get Burt's Bees to live up to their eco friendly image by going plastic free. ", user_id: u2.id, img_url:"https://img.makeupalley.com/0/3/5/1/845807.JPG")
p4 = Product.create!(name: "OGX Extra Strength Refreshing Scalp + Tea Tree Mint Shampoo", original_cost: 6.99, goal_amount: 250, start_date: "June, 15th 2020", end_date: "July, 15th 2020", summary: "A million plastic bottles are bought around the world every minute.  Most plastic bottles produced end up in landfill or in the ocean.  Let's see if OGX will join us in going plastic free.", user_id: u2.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/61dgZUrTh1L._SL1000_.jpg")
p5 = Product.create!(name: "OGX Extra Strength Refreshing Scalp + Tea Tree Mint Conditioner", original_cost: 6.99, goal_amount: 250, start_date: "June, 15th 2020", end_date: "July, 15th 2020", summary: "Millions of animals are killed by plastics every year, from birds to fish to other marine organisms. Nearly 700 species, including endangered ones, are known to have been affected by plastics.", user_id: u2.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/61nmIkOo9HL._SL1000_.jpg")
p6 = Product.create!(name: "Bull's Eye Original Barbecue Sauce", original_cost: 13.35, goal_amount: 200, start_date: "June, 15th 2020", end_date: "July, 15th 2020", summary: "The average person eats 70,000 microplastics each year.  Let's stop eating plastic and start eating more BBQ Sauce.", user_id: u3.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/81lo7xNFljL._SL1500_.jpg")


f1 = Funding.create!(user_id: u1.id, amount: 20.00)
f2 = Funding.create!(user_id: u1.id, amount: 30.00)
f3 = Funding.create!(user_id: u1.id, amount: 15.00)
f4 = Funding.create!(user_id: u1.id, amount: 20.00)
f5 = Funding.create!(user_id: u1.id, amount: 30.00)
f6 = Funding.create!(user_id: u1.id, amount: 25.00)
f7 = Funding.create!(user_id: u2.id, amount: 30.00)


ProductFunding.create!(product_id: p2.id, funding_id: f1.id)
ProductFunding.create!(product_id: p1.id, funding_id: f2.id)
ProductFunding.create!(product_id: p3.id, funding_id: f3.id)
ProductFunding.create!(product_id: p3.id, funding_id: f4.id)
ProductFunding.create!(product_id: p4.id, funding_id: f5.id)
ProductFunding.create!(product_id: p5.id, funding_id: f6.id)
ProductFunding.create!(product_id: p4.id, funding_id: f7.id)


Share.create!(user_id: u1.id, product_id: p2.id)
