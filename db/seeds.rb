# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Sale Seed
Sale.destroy_all

Sale.create({title: "Awesome Mountain Bike", body: "Slightly used Ibis SLR with custom after market everything", category: "Bikes", price: 2000, zipcode: 94577, user_id: 7})
Sale.create({title: "2013 Macbook Air", body: "Solid running machine. I upgraded and selling this for a great price", category: "Electronics", price: 500 , zipcode: 94113, user_id: 7})
Sale.create({title: "Game of Thrones Series", body: "After watching the tv show and having GRRM totally drop the ball on the written series, I am boycotting these books", category: "Books", price: 2, zipcode: 94114, user_id: 7})
Sale.create({title: "2012 Jeep Wrangler", body: "Pretty much the sweetest ride anyone could ever hope for. Not create on gass milage but will go over anything you want. This is a must buy for anyone going through a quarter life crisis and wants to have some fun", category: "Cars", price: 20000, zipcode: 94137, user_id: 7})
Sale.create({title: "Twister", body: "Great present, Great for first dates. Edges a bit stretched", category: "Games", price: 19, zipcode: 94104, user_id: 7})
Sale.create({title: "Fishing Boat full of holes", body: "This fishing boat is a beast. It will provide you with hours of relaxing fishing time provided you can drain the water with a bucket fast enough to not sink. And, if you do sink, you get the wonderful opportunity to get some cardio in and test out your swimming. Bucket sold separately", category: "Other", price: 150, zipcode: 94121, user_id: 7})
Sale.create({title: "Little Brother", body: "Have you always wanted a little brother but never had a chance because your parents loved you enough to not have another kid? Well, you're in luck, my parents just gave me a little brother and wont let me take him back. All he does is sleep and cry and is absolutely no fun at all. Price is negotiable. No return policy.", category: "Other", price: 30, zipcode: 94103, user_id: 7})
Sale.create({title: "2001 Lexus is300", body: "Pretty fun car, missing engine, wheels, interior, and doors.", category: "Cars", price: 15000, zipcode: 94110, user_id: 7})
