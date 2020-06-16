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


p1 = Product.create!(name: "Colgate Optic White Advanced Whitening Toothpaste with 2% Hydrogen Peroxide - Sparkling White - 3.2oz", original_cost: 4.99, goal_amount: 200, start_date: "June, 15th 2020", end_date: "July, 15th 2020", summary: "colgate test summary colgate test summary colgate test summary colgate test summary colgate test summary colgate test summary colgate test summary colgate test summary colgate test summary", user_id: u1.id, img_url:"https://target.scene7.com/is/image/Target/GUEST_19c84d64-f53a-4215-8ab1-e17c442611de?wid=488&hei=488&fmt=pjpeg")
p2 = Product.create!(name: "Mrs. Meyer's Multi-Surface Cleaner", original_cost: 3.99, goal_amount: 300, start_date: "June, 17th 2020", end_date: "July, 17th 2020", summary: "surface cleaner test summary surface cleaner test summary surface cleaner test summary surface cleaner test summary surface cleaner test summary surface cleaner test summary surface cleaner test summary surface cleaner test summary surface cleaner test summary ", user_id: u1.id, img_url:"https://target.scene7.com/is/image/Target/GUEST_a2a7ffa4-309c-4cf6-a513-55323a477d01?wid=488&hei=488&fmt=pjpeg")
p3 = Product.create!(name: "Burt's Bees, Beeswax Lip Balm", original_cost: 3.59, goal_amount: 250, start_date: "June, 15th 2020", end_date: "July, 15th 2020", summary: "burts bees test summary burts bees test summary burts bees test summary burts bees test summary burts bees test summary burts bees test summary burts bees test summary burts bees test summary burts bees test summary burts bees test summary", user_id: u2.id, img_url:"https://img.makeupalley.com/0/3/5/1/845807.JPG")
p4 = Product.create!(name: "OGX Extra Strength Refreshing Scalp + Tea Tree Mint Shampoo - 13 fl oz", original_cost: 6.99, goal_amount: 250, start_date: "June, 15th 2020", end_date: "July, 15th 2020", summary: "Shampoo summary", user_id: u2.id, img_url: "https://www.target.com/p/ogx-extra-strength-refreshing-scalp-tea-tree-mint-shampoo-13-fl-oz/-/A-52663527#")
p5 = Product.create!(name: "OGX Extra Strength Refreshing Scalp + Tea Tree Mint Conditioner - 13 fl oz", original_cost: 6.99, goal_amount: 250, start_date: "June, 15th 2020", end_date: "July, 15th 2020", summary: "Conditioner summary", user_id: u2.id, img_url: "https://www.target.com/p/ogx-extra-strength-refreshing-scalp-tea-tree-mint-conditioner-13-fl-oz/-/A-52663573#")
p6 = Product.create!(name: "Bull's Eye Original Barbecue Sauce, 18oz", original_cost: 13.35, goal_amount: 200, start_date: "June, 15th 2020", end_date: "July, 15th 2020", summary: "BBQ summary", user_id: u3.id, img_url: "https://images-na.ssl-images-amazon.com/images/I/81lo7xNFljL._SL1500_.jpg")


f1 = Funding.create!(user_id: u1.id, amount: 3.99)
f2 = Funding.create!(user_id: u1.id, amount: 4.99)
f3 = Funding.create!(user_id: u1.id, amount: 3.59)
f4 = Funding.create!(user_id: u1.id, amount: 3.59)
f5 = Funding.create!(user_id: u1.id, amount: 6.99)
f6 = Funding.create!(user_id: u1.id, amount: 6.99)
f7 = Funding.create!(user_id: u2.id, amount: 6.99)



ProductFunding.create!(product_id: p2.id, funding_id: f1.id)
ProductFunding.create!(product_id: p1.id, funding_id: f2.id)
ProductFunding.create!(product_id: p3.id, funding_id: f3.id)
ProductFunding.create!(product_id: p3.id, funding_id: f4.id)
ProductFunding.create!(product_id: p4.id, funding_id: f5.id)
ProductFunding.create!(product_id: p5.id, funding_id: f6.id)
ProductFunding.create!(product_id: p4.id, funding_id: f7.id)


Share.create!(user_id: u1.id, product_id: p2.id)
