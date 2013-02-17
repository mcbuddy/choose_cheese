# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

userA = User.create(name:'userA', email:'userA@example.com', password:'12345678', password_confirmation:'12345678')
userB = User.create(name:'userB', email:'userB@example.com', password:'12345678', password_confirmation:'12345678')

ch1 = Cheese.create(cheese_description: '', cheese_name: 'Manchego', milk_type:'Sheep Milk', origin_country: 'Spain', pasteurized: true, taste:'Mild', texture:'Semi-Hard')
ch2 = Cheese.create(cheese_description: '', cheese_name: 'Brie', milk_type:'Cow Milk', origin_country: 'French', pasteurized: true, taste:'Mild', texture:'Soft')
ch3 = Cheese.create(cheese_description: '', cheese_name: 'Parmigiano Reggiano', milk_type:'Cow Milk', origin_country: 'Italy', pasteurized: false, taste:'Sharp', texture:'Hard')
