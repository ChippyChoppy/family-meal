# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying Reservations"
Reservation.destroy_all
puts "Destroying Menus"
Menu.destroy_all
puts "Destroying Diners"
Diner.destroy_all
puts "Destroying Dishes"
Dish.destroy_all
puts "Destroying Homecooks"
Homecook.destroy_all

profile_pics = [
    "https://i1.wp.com/bestlifeonline.com/wp-content/uploads/2019/12/happy-woman-in-nature-at-sunset.jpg?resize=1250%2C702&ssl=1",
    "https://images.shape.mdpcdn.com/sites/shape.com/files/styles/facebook_og_image/public/story/10-habits-of-happy-people-700.jpg",
    "http://fitlife.tv/wp-content/uploads/2015/03/happy-person.jpg", 
    "https://www.totallifecounseling.com/wp-content/uploads/2013/01/Happy-Person.jpg",
    "https://www.verywellmind.com/thmb/bt3fDlQFeWkU_wIAGQRpNGdxbQ8=/1941x1548/filters:fill(ABEAC3,1)/jogging-running-beach-happy-56a905313df78cf772a2e249.jpg", 
    "https://i.insider.com/55d4ccbf2acae717448bf0ce, http://michelecfoster.com/wp-content/uploads/2017/03/Happy-people.jpg", 
    "https://media.truelocal.com.au/6/2/6CD45D3D-27C0-48C1-B266-0BF070ECA092/computerrepairpro-chatswood-computer-services-repair-happy-days-ahead-7d2f-938x704.jpg",
    "https://www.photo-elsoar.com/wp-content/images/Happy-smiling-latin-man.jpg"
]

puts "Creating Diners"
15.times do
    Diner.create(name: Faker::FunnyName.two_word_name, password: Faker::Internet.password, email: Faker::Internet.email, location: Faker::Address.city, dietary_restriction: Faker::Food.ingredient, profile_pic: profile_pics.sample )
end


dish_pics = [
    "https://www.dinneratthezoo.com/wp-content/uploads/2018/07/penne-alla-vodka-5.jpg",
    "https://assets.bonappetit.com/photos/5f9aeca766d333eac09d7eb4/5:7/w_2560,c_limit/HLY_Tofu_Larb-1120-Family-Meal6114.jpg",
    "https://assets.bonappetit.com/photos/5a4fd2b619acbe0fe0c6643a/16:9/w_1600%2Cc_limit/spiced-dal-with-fluffy-rice-and-salted-yogurt.jpg",
    "https://assets.bonappetit.com/photos/5d23b8ec9eb9a600080cf1a4/1:1/w_1600%2Cc_limit/Aug-Any-Way-Nicoise-Tuna-alt.jpg",
    "https://assets.bonappetit.com/photos/5c1bdcf60952c62cd717a3f2/1:1/w_1600%2Cc_limit/Basically-Veg-Fried-Rice-01.jpg",
    "https://assets.bonappetit.com/photos/5aec939abc86f9377d4c189c/1:1/w_1600%2Cc_limit/roll-up-breakfast-burrito.jpg",
    "https://assets.bonappetit.com/photos/5a4fbfb9ae12641eff6424ce/1:1/w_1600%2Cc_limit/charred-sweet-potatoes-with-toum.jpg",
    "https://assets.bonappetit.com/photos/57acee44f1c801a1038bc917/1:1/w_1600%2Cc_limit/KEY-LIME-PIE-1-of-1.jpg",
    "https://assets.bonappetit.com/photos/57acd87853e63daf11a4da9b/1:1/w_1600%2Cc_limit/no-bake-chocolate-cream-pie-with-toasted-meringue.jpg", 
    "https://assets.bonappetit.com/photos/5fa172b64f0368be78045623/16:9/w_2560%2Cc_limit/Basically-Kimci-MacNCheese-Plated.jpg", 
    ]

puts "Creating Dishes"    
15.times do
    Dish.create(name: Faker::Food.dish, ingredient: Faker::Food.ingredient, description: Faker::Food.description, dish_pic: dish_pics.sample)
end

cook_pics = [
    "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-eric-adjepong.jpg?itok=P9eRJ4zO", 
    "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-karen-acunowicz.jpg?itok=Gkl7c6kg",
    "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-jennifer-carroll.jpg?itok=MPoZoi0u",
    "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-kevin-gillespie.jpg?itok=-Wm_1NSO",
    "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-melissa-king.jpg?itok=rCQDdmtS",
    "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-brian-malarkey.jpg?itok=emg0QDXe",
    "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-nini-nguyen.jpg?itok=axiZsyKo",
    "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-angelo-sosa.jpg?itok=xmCYcGl6",
    "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-lee-anne-wong.jpg?itok=Bn-HKe0i",
    "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-padma-lakshmi.jpg?itok=EwFG8fJT"
]

home_pics = [
    "https://media.architecturaldigest.com/photos/588f95a30e7546d230c80232/master/w_1600%2Cc_limit/mike-d-beastie-boys-malibu-house-317-1.jpg",
    "https://media.architecturaldigest.com/photos/57c5be4071ea71ec6e0f42d6/master/w_1600%2Cc_limit/1016-jessica-chastain-new-york-city-apartment-4.jpg",
    "https://media.architecturaldigest.com/photos/56ab9d8e2f0677ce5b668c28/master/w_1600%2Cc_limit/marc-anthony-07.jpg",
    "https://media.architecturaldigest.com/photos/58139ea152feb3a97f03d4fe/master/w_1600%2Cc_limit/elton-john-house-4.jpg",
    "https://media.architecturaldigest.com/photos/55e78c74cd709ad62e8ff0ef/master/w_1600%2Cc_limit/dam-images-celebrity-homes-2014-ellen-pompeo-ellen-pompeo-los-angeles-13-dining-room-after.jpg",
    "https://media.architecturaldigest.com/photos/56d6229ace4f38152ccc87ec/master/w_1600%2Cc_limit/celebrity-dining-room-05.jpg",
    "https://media.architecturaldigest.com/photos/56046071cec2c8f831c163a6/master/w_1600%2Cc_limit/dam-images-celebrity-homes-2013-celebrity-dining-rooms-celebrity-dining-rooms-08-carole-king.jpg",
    "https://media.architecturaldigest.com/photos/560460795a2d8a2712e8a930/master/w_1600%2Cc_limit/dam-images-celebrity-homes-2013-celebrity-dining-rooms-celebrity-dining-rooms-22-demi-moore-ashton-kutcher.jpg"
]

puts "Creating Homecook"
15.times do
    Homecook.create(name: Faker::FunnyName.two_word_name, password: Faker::Internet.password, email: Faker::Internet.email, neighborhood: Faker::Address.community, cuisine: Faker::Nation.nationality, address: Faker::Address.full_address, open: "Daily 5-9", profile_pic: cook_pics.sample, home_pic: home_pics.sample)
end

puts "Creating Reservation"
30.times do
    Reservation.create(homecook_id: Homecook.all.sample.id, diner_id: Diner.all.sample.id, party_size: rand(1..6), date: Faker::Date.in_date_period(month: 3), time: rand(17..21))
end

availability = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday", "Mon, Wed, Fri", "Tues & Thurs", "Friday - Sunday"]

puts "Creating the Menu"
5.times do
    Menu.create(dish_id: Dish.all.sample.id, homecook_id: Homecook.first.id, availability: availability.sample, price: rand(20..60))
end

5.times do
    Menu.create(dish_id: Dish.all.sample.id, homecook_id: Homecook.last.id, availability: availability.sample, price: rand(20..60))
end

5.times do
    Menu.create(dish_id: Dish.all.sample.id, homecook_id: Homecook.third.id, availability: availability.sample, price: rand(20..60))
end

10.times do
    Menu.create(dish_id: Dish.all.sample.id, homecook_id: Homecook.all.sample.id, availability: availability.sample, price: rand(20..60))
end