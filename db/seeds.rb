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

#Diners ------------------------------

d1 = Diner.create(name: "Buffy Summers", password: "GirlPower", email: "buffy@theslayer.com", location: "Sunnydale, CA", dietary_restriction: "Beer Bad", profile_pic: "https://upload.wikimedia.org/wikipedia/en/a/a2/S514_Buffy.png" )
d2 = Diner.create(name: "Willow Rosenberg", password: "GoodWitch", email: "willow@theslayer.com", location: "Sunnydale, CA", dietary_restriction: "wolfsbane", profile_pic: "https://pbs.twimg.com/profile_images/1247562103080259585/JOJ277bB.jpg")
d3 = Diner.create(name: "Rupert Giles", password: "IloveLibraries", email: "giles@watchers.com", location: "Sunnydale, CA", dietary_restriction: "soy", profile_pic: "https://vignette.wikia.nocookie.net/buffymegaxover/images/a/a3/Rupert_Giles.jpg/revision/latest/scale-to-width-down/340?cb=20150922044215" )
d4 = Diner.create(name: "Xander Harris", password: "Anya4Ever", email: "xander@theslayer.com", location: "Sunnydale, CA", dietary_restriction: "rabbit", profile_pic: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS2ybZK9ObrX0yF94GACrfzX-Y6zN_JzchWhg&usqp=CAU")
d5 = Diner.create(name: "William 'The Bloody' 'Spike' Pratt", password: "Deathisyourart", email: "williamthebloody@vamp.com", location: "Sunnydale, CA", profile_pic: "https://www.factinate.com/wp-content/uploads/2018/04/Spike-from-Buffy-the-Vampire-Slayer.jpg")

# DISHES ------------------------------------- 
    # Italian -------------------------------------

eggplant_parm = Dish.create(name: "Eggplant Parmesan", ingredient: "eggplant, garlic, anchovy, tomatoes, basil, salt, parmesan, mozzarella, breadcrumbs, eggs", description: "Messy and delicious, this dish oozes cheesey goodness.", dish_pic: "https://assets.bonappetit.com/photos/57d9d24d5a14a530086ef7bf/master/w_1024%2Cc_limit/bas-best-eggplant-parmesan.jpg")
pork_ragu = Dish.create(name: "Pork Ragu over Creamy Polenta", ingredient: "pork shoulder, onion, garlic, red wine, tomatoes, herbs, polenta, butter, parmesan", description: "Perfectly creamy polenta topped with a pork Ragu that would make any Italian Grandmother proud.", dish_pic: "https://assets.bonappetit.com/photos/5c702548399b362fec2689b4/1:1/w_800%2Cc_limit/pork-ragu-over-creamy-polenta.jpg")
tort = Dish.create(name: "Tortellini with Brown Butter and Sage", ingredient: "ricotta cheese tortellini (semolina flour, egg yolk, water, salt), walnuts, galic, sage, apple cider vinegar, parmesan", description: "Satisfying, autumnal pasta to warm your belly.", dish_pic: "https://assets.bonappetit.com/photos/5cc21c02ff21d3a70c2e802d/master/w_1024%2Cc_limit/Basically-Tortellini-Brown-Butter.jpg" )
cac_pep = Dish.create(name: "Cacio e Pepe Shells", ingredient: "shell pasta, butter, black pepper, milk, parmesan", description: "Mac and cheese for grownups. This dish is never a bad decision.", dish_pic: "https://assets.bonappetit.com/photos/5cacf0e37fbac95e35dcc499/1:1/w_1024%2Cc_limit/basically-adult-mac-and-cheese-2-21022019.jpg")

    #Asian ------------------------------------------
nasi = Dish.create(name: "Nasi Lemak", ingredient: "chiles, peanuts, anchovies, alium, rice, coconut milk, eggs, cucumber", description: "Malaysian coconutty rice bowl topped with crispy-crunchy crumbles of teeny little fried anchovies dressed in a sweet-spicy sambal.", dish_pic: "https://assets.bonappetit.com/photos/5d7a81f1c0c7a2000844aac4/1:1/w_1024%2Cc_limit/1019-KOP-Nasi-Lemak.jpg")
yum = Dish.create(name: "Yum Phonlamai", ingredient: "coconut, garlic, chiles, lime, fish sauce, apples, shallot, grapes, fresh herbs", description: "This fruit salad is an homage to an old pineapple stand in Bangkok's Mahank Fruit Market. The interplay between the fish sauce, chiles, and sweet juicy fruits makes this a simple but refreshing dish.", dish_pic: "https://assets.bonappetit.com/photos/5f610add904c9171cb7993f9/1:1/w_1024%2Cc_limit/Talat-Yum-Phonlamai.jpg")
tteok = Dish.create(name: "Tteokbokki (Spicy Korean Rice Cakes", ingredient: "anchovies, kombu, alium, odeng (Korean fish cakes), gochujang, gochugaru, rice cakes, bok choy, hard-boiled eggs, sesame", description: "Supremely satisfying Korean snack food, found in street food stalls and home kitchens alike. Sweet and spicy snack to share, or meal for one.", dish_pic: "https://assets.bonappetit.com/photos/5d38cbae9b6cf80008d71609/1:1/w_1024%2Cc_limit/0719-tteokbaki-rice-cakes-LEDE-New.jpg")
chick_thighs = Dish.create(name: "Vietnamese Fried Chicken Thighs with Garlic-Chile Glaze", ingredient: "chicken, soy sauce, alium, rice flour, ginger, fish sauce, chili paste, lime juice", description: "These well seasoned and spiced chicken thighs are crispy on the outside, but perfectly moist and tender on the inside. You won't find a better fried chicken this side of the Hellmouth.")

    # British -------------------------------------------
bang = Dish.create(name: "Bangers and Mash-ish", ingredient: "chicken sausage, butternut squash, alium, dijon mustard", description: "A California twist on your basic meat-and-potatoes meal, chicken and squash keep things healthy.", dish_pic: "https://assets.bonappetit.com/photos/57af6e7b53e63daf11a4e58a/1:1/w_1024%2Cc_limit/healthy-bangers-and-mash-646.jpg")
fish_chip = Dish.create(name: "Fish and Chips with Malt Vinegar Aioli", ingredient: "egg yolk, malt vinegar, flour, black pepper, lager, haddock, potato, old bay seasoning", description: "Traditional fish and chips, served with a perfect blend of the two most perfect condiments.", dish_pic: "https://assets.bonappetit.com/photos/57ae045ef1c801a1038bceda/1:1/w_1024%2Cc_limit/fish-and-chips-with-malt-vinegar-mayonnaise.jpg")
candy_cukes = Dish.create(name: "Candied Cucumbers with Vanilla Whip", ingredient: "sugar, salt, Persian cucumbers, vanilla, almonds, heavy cream, lime zest", description: "Cucumbers are transformed into candy-like bites in the unexpected dessert inspired by Eton mess.", dish_pic: "https://assets.bonappetit.com/photos/5f4fc8ec24f60ecd950f48a3/1:1/w_1024%2Cc_limit/HLY-FMC-Cucumber-pushed.jpg")
full_english = Dish.create(name: "Full English Breakfast for Dinner", ingredient: "sausage, beans, potatoes, eggs, tomatoes, blood pudding, toast, salt, pepper, mushrooms", description: "A hearty way to start your day, but at the end of it. A full English breakfast has everything you could want from breakfast for dinner.", dish_pic: "https://assets.bonappetit.com/photos/5bae794a56c47e4ca3babf6c/1:1/w_1024%2Cc_limit/unnamed.jpg")

    #Vegetarian --------------------------------------------------
squash_chick = Dish.create(name: "Roasted Squash Salad with Crispy Chickpeas", ingredient: "sweet potatoes, delicata squash, chickpeas, scallions, rice vinegar, sesame, white miso, soy sauce, yogurt", description: "Crispy, creamy, chewy, and bright don't even begin to describe this so good you forget it's healthy dish!", dish_pic: "https://assets.bonappetit.com/photos/5df7ee5b6015a60009790753/1:1/w_1024%2Cc_limit/HLY-FGFP-Roasted-Squash-Chickpeas-16x9.jpg")
khichdi = Dish.create(name: "Khichdi", ingredient: "mung beans, rice, turmeric, butter, cumin, chiles, asafetida", description: "Indian mung bean and rice stew, will warm you from the inside out. Comfort food at it's finest.", dish_pic: "https://assets.bonappetit.com/photos/5f40055dd8a686d03a8e3372/1:1/w_1024%2Cc_limit/Khichdi-new.jpg")
bulg_egg = Dish.create(name: "Bulgogi-Style Eggplant", ingredient: "alium, rice syrup, soy sauce, gochugaru, sesame oil, eggplant, sesame seeds", description: "Sweet and salty, traditionally a beef dish, the marinade lends itself well to the texture of pan-fried eggplant.", dish_pic: "https://assets.bonappetit.com/photos/5ddc31f550e3b40008f781ff/1:1/w_1024%2Cc_limit/1219-GoLive-Eggplant-5.jpg")
cauli_taco = Dish.create(name: "Cauliflower Tacos with Cashew Crema", ingredient: "chile, alium, cashew butter, lime juice, spices, cauliflower, corn tortillas", description: "Oven roasted, charred and crispy cauliflower makes a delicious and filling taco.  Topped with traditional fixins.", dish_pic: "https://assets.bonappetit.com/photos/5df7f0a5e32cc00009ccdc32/1:1/w_1024%2Cc_limit/HLY-FGFP-Cauliflower-Tacos-16x9.jpg")
brocc_cheese = Dish.create(name: "Broccolini Cheesesteaks", ingredient: "carrot, bell peppers, onion, broccolini, garlic, sherry vinegar, hoagie roll, provolone cheese", description: "Vegetarian take on a Philly cheesesteak. Packed with roasted broccolini, a tangy romesco sauce, and ooey gooey cheese. You won't even miss the meat!", dish_pic: "https://assets.bonappetit.com/photos/5a6f60cbf1ca4a26c272104b/1:1/w_1024%2Cc_limit/broccolini-cheesesteaks.jpg")

    # Eastern European ------------------------------------
bigos = Dish.create(name: "Bigos (Hunter's stew)", ingredient: "bacon, kielbasa, alium, tomatoes, spices, white wine, cabbage, carrot, apple, potato, sauerkraut, fresh herbs, pumpernickel bread", description: "Bigos is an Eastern European stew that has many adaptations. This version is a Polish hunter's stew featuring kielbasa and smokey bacon, with melty cabbage and flavorful broth to sop up with hearty bread.", dish_pic: "https://assets.bonappetit.com/photos/5bc65895c5a9942d0858718d/1:1/w_1024%2Cc_limit/bigos-1.jpg")
beet_egg = Dish.create(name: "Beet-Filled Eggs", ingredient: "beets, alium, mayo, walnuts, prunes, lemon juice, pickled beets, hard-boiled egg", description: "Yolks on you! The deviled eggs lesser known sister, give these beet filled eggs a try!", dish_pic: "https://assets.bonappetit.com/photos/57ad299b53e63daf11a4dc7b/master/w_1024%2Cc_limit/beet-filled-eggs.jpg")
pier = Dish.create(name: "Pierogis", ingredient: "eggs, milk, sour cream, flour, various fillings", description: "Your favorite dumpling! Pick your filling; Kielbasa, Sauerkraut, and Potato; Bacon, Mushroom and Spinach; Beef, Onion, and Cheddar; or Cottage Cheese and Blueberry", dish_pic: "https://assets.bonappetit.com/photos/57acc1bb1b3340441497516c/1:1/w_1024%2Cc_limit/cottage-cheese-and-blueberry-pierogies.jpg" )
strog = Dish.create(name: "Beef Stroganoff", ingredient: "egg noodles, mushrooms, thyme, beef tenderloin, alium, heavy cream, sour cream, Worcestershire sauce, Dijon mustard, egg noodles, butter, and parsley", description: "Fill your belly, and feed your heart. Beef Stroganoff is the ultimate comfort food.", dish_pic: "https://assets.bonappetit.com/photos/57acd466f1c801a1038bc7e5/1:1/w_1024%2Cc_limit/adams-beef-stroganoff.jpg")

# Homecooks -----------------------------------------
h1 = Homecook.create(name: "Cordelia Chase", password: "IloveShopping", email: "cordelia@angeldet.com", bio: "I was a cheerleader, a princess, and a warrior. I've turned to cooking as a comfort from my visions, and to keep me distracted from being hunted by an evil law firm. Can't wait to share my table with you!", neighborhood: "The Bronze", cuisine: "Italian", address: "123 Sunnydale Ave. Sunnydale, CA", open: "Daily 5-9", profile_pic: "https://upload.wikimedia.org/wikipedia/en/thumb/d/da/CordeliaChase.jpg/220px-CordeliaChase.jpg", home_pic: "https://media.architecturaldigest.com/photos/57ffe6f106d6622c7c27fd7d/master/w_1600%2Cc_limit/midcentury-modern-dining-rooms-08.jpg" )
h2 = Homecook.create(name: "Liam 'Angelus' 'Angel'", password: "SoulVamp", email: "angel@angeldet.com", bio: "Vampire with a soul. Former CEO of Angel Investigations, former CEO of Wolfram & Hart. Feeding others feeds my soul.", neighborhood: "Hellmouth", cuisine: "Traditional English/Irish", address: "321 Sunnydale Ave. Sunnydale, CA", open: "Daily 5-9", profile_pic: "https://us.v-cdn.net/6030815/uploads/294/M99P19MI8BOU.jpg", home_pic: "https://media.architecturaldigest.com/photos/57ffe6ef04c799614d985dd1/master/w_1600%2Cc_limit/midcentury-modern-dining-rooms-04.jpg")
h3 = Homecook.create(name: "Tara Maclay", password: "ImUnderYourSpell", email: "tara@ucsunnydale.edu", bio: "Food heals the soul. My dishes are based in ayurveda, using plants and herbs to heal and strengthen the body. I cook instinctually, following the guidance of the Earth Mother. Welcome to my witchy kitchen.", neighborhood: "The Magic Box", cuisine: "Vegetarian", address: "456 Hellmouth Lane, Sunnydale, CA", open: "Daily 5-9, and until midnight on the full moon", profile_pic: "https://tvline.com/wp-content/uploads/2017/03/amber-benson-tara-buffy.png?w=619", home_pic: "https://media.architecturaldigest.com/photos/57ffe6f204c799614d985dd5/master/w_1600%2Cc_limit/midcentury-modern-dining-rooms-09.jpg")
h4 = Homecook.create(name: "Anya 'Anyanka' Jenkins", password: "Ihatebunnies", email: "anya@vengeance.org", bio: "Former Patron Saint of the Women Scorned turned home cook! Don't worry, I'm out of the vengeance business and now I just love to nourish folks with my flavorful dishes from the old country.", neighborhood: "Hellmouth", cuisine: "Eastern European", address: "666 Vengeance St. Sunnydale, CA", open: "Daily 5-9", profile_pic: "https://i.ytimg.com/vi/rFhJW8EDynA/hqdefault.jpg", home_pic: "https://media.architecturaldigest.com/photos/57ffe6f206d6622c7c27fd7e/master/w_1600%2Cc_limit/midcentury-modern-dining-rooms-10.jpg" )
h5 = Homecook.create(name: "Daniel 'Oz' Osbourne", password: "howlatthemoon", email: "oz@dingoesate.co", bio: "Former touring musician. Met the love of my life, Bayarmaa in Tibet. Proud husband and stay-at-home dad. Cooking became my passion while raising my son.Come on over, I'd love to have you for dinner.", neighborhood: "The Bronze", cuisine: "Pan-Asian", address: "131 Werewolf Way, Sunnydale, CA", open: "Daily 5-9, closed during the full moon", profile_pic: "https://static.comicvine.com/uploads/original/3/35500/1238309-12.jpg", home_pic: "https://media.architecturaldigest.com/photos/57ffe6ee06d6622c7c27fd7b/master/w_1600%2Cc_limit/midcentury-modern-dining-rooms-01.qch.jpg")

puts "Creating Reservation"
50.times do
    Reservation.create(homecook_id: Homecook.all.sample.id, diner_id: Diner.all.sample.id, party_size: rand(1..6), date: Faker::Date.between(from: '2020-10-25', to:'2020-12-25'), time: rand(17..21))
end

puts "Creating the Menu"
# Cordelia Menu ----------------------
Menu.create(dish_id: eggplant_parm.id, homecook_id: h1.id, availability: "Mon, Wed, Fri", price: 22.15)
Menu.create(dish_id: tort.id, homecook_id: h1.id, availability: "Mon, Wed, Fri", price: 17.45)
Menu.create(dish_id: cac_pep.id, homecook_id: h1.id, availability: "Tues, Thurs, Sat, Sun", price: 19.95)
Menu.create(dish_id: pork_ragu.id, homecook_id: h1.id, availability: "Tues, Thurs, Sat, Sun", price: 27.75)

# Angel Menu --------------------------
Menu.create(dish_id: bang.id, homecook_id: h2.id , availability: "Daily", price: 18.75)
Menu.create(dish_id: candy_cukes.id, homecook_id: h2.id , availability: "Daily", price: 10.25)
Menu.create(dish_id: full_english.id, homecook_id: h2.id , availability: "Friday-Sunday", price: 22.75)
Menu.create(dish_id: fish_chip.id, homecook_id: h2.id , availability: "Friday and Saturday", price: 28.50)
Menu.create(dish_id: beet_egg.id, homecook_id: h2.id , availability: "Monday - Friday", price: 10.95)

# Tara Menu ---------------------------
Menu.create(dish_id: squash_chick.id, homecook_id: h3.id , availability: "Monday", price: 15.00)
Menu.create(dish_id: khichdi.id, homecook_id: h3.id , availability: "Tuesday", price: 15.00)
Menu.create(dish_id: bulg_egg.id, homecook_id: h3.id , availability: "Wednesday", price: 15.00)
Menu.create(dish_id: cauli_taco.id, homecook_id: h3.id , availability: "Tuesday, Friday, and Saturday", price: 15.00)
Menu.create(dish_id: brocc_cheese.id, homecook_id: h3.id , availability: "Friday - Sunday", price: 15.00)
Menu.create(dish_id: eggplant_parm.id, homecook_id: h3.id, availability: "Thursday", price: 20.00)

# Anya Menu ---------------------------
Menu.create(dish_id: bigos.id, homecook_id: h4.id, availability: "Monday, Wednesday, Friday", price: 25.75)
Menu.create(dish_id: beet_egg.id, homecook_id: h4.id, availability: "Monday, Wednesday, Friday", price: 12.00)
Menu.create(dish_id: pier.id, homecook_id: h4.id, availability: "Friday - Sunday", price: 22.50)
Menu.create(dish_id: strog.id, homecook_id: h4.id, availability: "Daily", price: 28.15)

# Oz Menu -----------------------------
Menu.create(dish_id: nasi.id, homecook_id: h5.id, availability: "Daily", price: 14.30)
Menu.create(dish_id: yum.id, homecook_id: h5.id, availability: "Daily", price: 9.15)
Menu.create(dish_id: tteok.id, homecook_id: h5.id, availability: "Tuesday, Thursday", price: 12.70)
Menu.create(dish_id: chick_thighs.id, homecook_id: h5.id, availability: "Friday & Saturday", price: 22.80)
Menu.create(dish_id: bulg_egg.id, homecook_id: h5.id, availability: "Friday & Saturday", price: 14.30)
Menu.create(dish_id: khichdi.id, homecook_id: h5.id, availability: "Daily", price: 14.30)

# profile_pics = [
#     "https://i1.wp.com/bestlifeonline.com/wp-content/uploads/2019/12/happy-woman-in-nature-at-sunset.jpg?resize=1250%2C702&ssl=1",
#     "https://images.shape.mdpcdn.com/sites/shape.com/files/styles/facebook_og_image/public/story/10-habits-of-happy-people-700.jpg",
#     "http://fitlife.tv/wp-content/uploads/2015/03/happy-person.jpg", 
#     "https://www.totallifecounseling.com/wp-content/uploads/2013/01/Happy-Person.jpg",
#     "https://www.verywellmind.com/thmb/bt3fDlQFeWkU_wIAGQRpNGdxbQ8=/1941x1548/filters:fill(ABEAC3,1)/jogging-running-beach-happy-56a905313df78cf772a2e249.jpg", 
#     "https://i.insider.com/55d4ccbf2acae717448bf0ce, http://michelecfoster.com/wp-content/uploads/2017/03/Happy-people.jpg", 
#     "https://media.truelocal.com.au/6/2/6CD45D3D-27C0-48C1-B266-0BF070ECA092/computerrepairpro-chatswood-computer-services-repair-happy-days-ahead-7d2f-938x704.jpg",
#     "https://www.photo-elsoar.com/wp-content/images/Happy-smiling-latin-man.jpg"
# ]

# puts "Creating Diners"
# 15.times do
#     Diner.create(name: Faker::FunnyName.two_word_name, password: Faker::Internet.password, email: Faker::Internet.email, location: Faker::Address.city, dietary_restriction: Faker::Food.ingredient, profile_pic: profile_pics.sample )
# end

# dish_pics = [
#     "https://www.dinneratthezoo.com/wp-content/uploads/2018/07/penne-alla-vodka-5.jpg",
#     "https://assets.bonappetit.com/photos/5f9aeca766d333eac09d7eb4/5:7/w_2560,c_limit/HLY_Tofu_Larb-1120-Family-Meal6114.jpg",
#     "https://assets.bonappetit.com/photos/5a4fd2b619acbe0fe0c6643a/16:9/w_1600%2Cc_limit/spiced-dal-with-fluffy-rice-and-salted-yogurt.jpg",
#     "https://assets.bonappetit.com/photos/5d23b8ec9eb9a600080cf1a4/1:1/w_1600%2Cc_limit/Aug-Any-Way-Nicoise-Tuna-alt.jpg",
#     "https://assets.bonappetit.com/photos/5c1bdcf60952c62cd717a3f2/1:1/w_1600%2Cc_limit/Basically-Veg-Fried-Rice-01.jpg",
#     "https://assets.bonappetit.com/photos/5aec939abc86f9377d4c189c/1:1/w_1600%2Cc_limit/roll-up-breakfast-burrito.jpg",
#     "https://assets.bonappetit.com/photos/5a4fbfb9ae12641eff6424ce/1:1/w_1600%2Cc_limit/charred-sweet-potatoes-with-toum.jpg",
#     "https://assets.bonappetit.com/photos/57acee44f1c801a1038bc917/1:1/w_1600%2Cc_limit/KEY-LIME-PIE-1-of-1.jpg",
#     "https://assets.bonappetit.com/photos/57acd87853e63daf11a4da9b/1:1/w_1600%2Cc_limit/no-bake-chocolate-cream-pie-with-toasted-meringue.jpg", 
#     "https://assets.bonappetit.com/photos/5fa172b64f0368be78045623/16:9/w_2560%2Cc_limit/Basically-Kimci-MacNCheese-Plated.jpg", 
#     ]

# puts "Creating Dishes"    
# 15.times do
#     Dish.create(name: Faker::Food.dish, ingredient: Faker::Food.ingredient, description: Faker::Food.description, dish_pic: dish_pics.sample)
# end

# cook_pics = [
#     "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-eric-adjepong.jpg?itok=P9eRJ4zO", 
#     "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-karen-acunowicz.jpg?itok=Gkl7c6kg",
#     "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-jennifer-carroll.jpg?itok=MPoZoi0u",
#     "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-kevin-gillespie.jpg?itok=-Wm_1NSO",
#     "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-melissa-king.jpg?itok=rCQDdmtS",
#     "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-brian-malarkey.jpg?itok=emg0QDXe",
#     "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-nini-nguyen.jpg?itok=axiZsyKo",
#     "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-angelo-sosa.jpg?itok=xmCYcGl6",
#     "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-lee-anne-wong.jpg?itok=Bn-HKe0i",
#     "https://www.bravotv.com/sites/bravo/files/styles/cast_head_shot_square_computer/public/2019-12/top-chef-season-17-headshot-padma-lakshmi.jpg?itok=EwFG8fJT"
#]

# home_pics = [
#     "https://media.architecturaldigest.com/photos/588f95a30e7546d230c80232/master/w_1600%2Cc_limit/mike-d-beastie-boys-malibu-house-317-1.jpg",
#     "https://media.architecturaldigest.com/photos/57c5be4071ea71ec6e0f42d6/master/w_1600%2Cc_limit/1016-jessica-chastain-new-york-city-apartment-4.jpg",
#     "https://media.architecturaldigest.com/photos/56ab9d8e2f0677ce5b668c28/master/w_1600%2Cc_limit/marc-anthony-07.jpg",
#     "https://media.architecturaldigest.com/photos/58139ea152feb3a97f03d4fe/master/w_1600%2Cc_limit/elton-john-house-4.jpg",
#     "https://media.architecturaldigest.com/photos/55e78c74cd709ad62e8ff0ef/master/w_1600%2Cc_limit/dam-images-celebrity-homes-2014-ellen-pompeo-ellen-pompeo-los-angeles-13-dining-room-after.jpg",
#     "https://media.architecturaldigest.com/photos/56d6229ace4f38152ccc87ec/master/w_1600%2Cc_limit/celebrity-dining-room-05.jpg",
#     "https://media.architecturaldigest.com/photos/56046071cec2c8f831c163a6/master/w_1600%2Cc_limit/dam-images-celebrity-homes-2013-celebrity-dining-rooms-celebrity-dining-rooms-08-carole-king.jpg",
#     "https://media.architecturaldigest.com/photos/560460795a2d8a2712e8a930/master/w_1600%2Cc_limit/dam-images-celebrity-homes-2013-celebrity-dining-rooms-celebrity-dining-rooms-22-demi-moore-ashton-kutcher.jpg"
# ]

# puts "Creating Homecook"
# 15.times do
#     Homecook.create(name: Faker::FunnyName.two_word_name, password: Faker::Internet.password, email: Faker::Internet.email, bio: Faker::ChuckNorris.fact, neighborhood: Faker::Address.community, cuisine: Faker::Nation.nationality, address: Faker::Address.full_address, open: "Daily 5-9", profile_pic: cook_pics.sample, home_pic: home_pics.sample)
# end

# 10.times do
#     Menu.create(dish_id: Dish.all.sample.id, homecook_id: Homecook.all.sample.id, availability: availability.sample, price: rand(20..60))
# end