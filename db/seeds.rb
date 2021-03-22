# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Admin.create!(
   email: 'test@test.com',
   password: 'testtest',
)

6.times do |n|
 Genre.create!(
   name: "焼き菓子#{n + 1}",
)
end

6.times do |n|
 Item.create!(
   genre_id: "#{n + 1}",
   name: "お菓子#{n + 1}",
   image: File.open("./app/assets/images/img/test#{n + 1}.jpg"),
   introduction: "おいしいよ！最高だよ！！",
   taxfree: "#{(n + 1) * 500}",
   is_valid: 'true',
)
end

6.times do |n|
 Item.create!(
   genre_id: "#{n + 1}",
   name: "お菓子#{n + 7}",
   image: File.open("./app/assets/images/img/test#{n + 7}.jpg"),
   introduction: "おいしいよ！最高だよ！！",
   taxfree: "#{(n + 1) * 1000}",
   is_valid: 'false',
)
end

