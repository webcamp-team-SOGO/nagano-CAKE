# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Admin.create(
   email: 'test@test.com',
   password: 'testtest',
)

Admin.create(
   email: 'test@test.com',
   password: 'testtest',
)

7.times do |n|
    Customer.create!(
      email: "test#{n + 1}@test.com",
      last_name: "test#{n + 1}",
      first_name: "test#{n + 1}",
      k_last_name: "test#{n + 1}",
      k_first_name: "test#{n + 1}",
      postal_code: '1600001',
      address: "東京都新宿区新宿２丁目５−１０ 成信ビル 4階#{n + 1}",
      telephone_number: "090123456#{n + 1}",
      password: "password",
      is_valid: "true"
    )
  end

7.times do |n|
 Customer.create!(
   email: "test#{n + 8}@test.com",
   last_name: "test#{n + 8}",
   first_name: "test#{n + 8}",
   k_last_name: "test#{n + 8}",
   k_first_name: "test#{n + 8}",
   postal_code: '0000000',
   address: "長野#{n + 1}",
   telephone_number: "080000000#{n + 1}",
   password: "password",
   is_valid: "false"
 )
 end

 6.times do |n|
 Genre.create!(
   name: "焼き菓子#{n + 1}",
)
end

6.times do |n|
 Item.create!(
   genre_id: "#{n + 1}",
   name: "お菓子#{n + 1}",
   image: File.open("./app/assets/images/img2/sample#{n + 1}-min.JPG"),
   introduction: "おいしいよ！最高だよ！！",
   taxfree: "#{(n + 1) * 500}",
   is_valid: 'true',
)
end

6.times do |n|
 Item.create!(
   genre_id: "#{n + 1}",
   name: "お菓子#{n + 7}",
   image: File.open("./app/assets/images/img2/sample#{n + 7}-min.JPG"),
   introduction: "すごくおいしい、すごくおいしい、すごくおいしい、すごくおいしい、すごくおいしい、すごくおいしい、すごくおいしい、すごくおいしい、
   すごくおいしい、すごくおいしい、すごくおいしい、すごくおいしい、すごくおいしい",
   taxfree: "#{(n + 1) * 1000}",
   is_valid: 'false',
)
end

6.times do |n|
 Item.create!(
   genre_id: "#{n + 1}",
   name: "お菓子#{n + 1}",
   image: File.open("./app/assets/images/img2/sample#{n + 13}-min.JPG"),
   introduction: "おいしいよ！最高だよ！！",
   taxfree: "#{(n + 1) * 800}",
   is_valid: 'true',
)
end

6.times do |n|
 Item.create!(
   genre_id: "#{n + 1}",
   name: "お菓子#{n + 1}",
   image: File.open("./app/assets/images/img2/sample#{n + 19}-min.JPG"),
   introduction: "おいしいよ！最高だよ！！",
   taxfree: "#{(n + 1) * 300}",
   is_valid: 'true',
)
end
