# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Product.destroy_all

u1 = User.create(name: "Anthony", email: "anthony@gmail.com", address: "123 Smart St., New York, NY 11215", cc: 1234567890, password: "Antman44", seed_status: false, sprout_status: false, tree_status: true)
u2 = User.create(name: "Anna", email: "anna@gmail.com", address: "432 Pepper St., New York, NY 11215", cc: 7987654321, password: "Anna1234", seed_status: false, sprout_status: true, tree_status: false)

p1 = Product.create!(name: "Colgate Optic White Advanced Whitening Toothpaste with 2% Hydrogen Peroxide - Sparkling White - 3.2oz", original_cost: 4.99, goal_amount: 200, start_date: "June, 15th 2020", end_date: "July, 15th 2020", summary: "colgate test summary", user_id: u1.id, img_url:"https://target.scene7.com/is/image/Target/GUEST_19c84d64-f53a-4215-8ab1-e17c442611de?wid=488&hei=488&fmt=pjpeg")
p2 =Product.create!(name: "Mrs. Meyer's Multi-Surface Cleaner", original_cost: 3.99, goal_amount: 300, start_date: "June, 17th 2020", end_date: "July, 17th 2020", summary: "surface cleaner test summary", user_id: u1.id, img_url:"https://target.scene7.com/is/image/Target/GUEST_a2a7ffa4-309c-4cf6-a513-55323a477d01?wid=488&hei=488&fmt=pjpeg")
 p3 = Product.create!(name: "Burt's Bees, Beeswax Lip Balm", original_cost: 3.59, goal_amount: 250, start_date: "June, 15th 2020", end_date: "July, 15th 2020", summary: "burts bees test summary", user_id: u2.id, img_url:"https://img.makeupalley.com/0/3/5/1/845807.JPG")

