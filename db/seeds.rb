# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

7.times do |n|
 Customer.create!(
   email: "test#{n + 1}@test.com",
   last_name: "test#{n + 1}",
   first_name: "test#{n + 1}",
   k_last_name: "テスト#{n + 1}",
   k_first_name: "テスト#{n + 1}",
   postal_code: '160022',
   address: "東京都新宿区新宿２丁目５−１０ 成信ビル 4階",
   telephone_number: "09012345678#{n + 1}",
   password: "password",
   is_valid: "true"
 )
end

7.times do |n|
 Customer.create!(
   email: "test#{n + 9}@test.com",
   last_name: "test#{n + 1}",
   first_name: "test#{n + 1}",
   k_last_name: "テスト#{n + 1}",
   k_first_name: "テスト#{n + 1}",
   postal_code: '160022',
   address: "東京都新宿区新宿２丁目５−１０ 成信ビル 4階",
   telephone_number: "090123456#{n + 1}",
   password: "password",
   is_valid: "false"
 )
end

7.times do |n|
 Delivery.create!(
   customer_id: "#{n + 1}",
   name: "test#{n + 1}",
   postal_code: '1234567',
   address: "北海道札幌市中央区１－１－１",
 )
end

7.times do |n|
    Customer.create!(
      email: "edogawa#{n + 1}@test.com",
      last_name: "江戸川#{n + 1}",
      first_name: "コナン#{n + 1}",
      k_last_name: "エドガワ#{n + 1}",
      k_first_name: "コナン#{n + 1}",
      postal_code: '1600022',
      address: "東京都新宿区新宿２丁目５−１０ 成信ビル 4階#{n + 1}",
      telephone_number: "09012345678#{n + 1}",
      password: "password#{n + 1}",
      is_valid: "true"
    )
  end

   7.times do |n|
    Customer.create!(
      email: "mouriran#{n + 1}@test.com",
      last_name: "江戸川#{n + 1}",
      first_name: "コナン#{n + 1}",
      k_last_name: "エドガワ#{n + 1}",
      k_first_name: "コナン#{n + 1}",
      postal_code: '1600022',
      address: "東京都新宿区新宿２丁目５−１０ 成信ビル 4階#{n + 1}",
      telephone_number: "08000000000#{n + 1}",
      password: "password#{n + 1}",
      is_valid: "false"
    )
  end

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

7.times do |n|
 Order.create!(
   customer_id: "#{n + 1}",
   shipping: '800',
   total_payment: '2500',
   payment_method: 0,
   name: 'test太郎',
   postal_code: '111-1111',
   address: '東京都米花市米花町5丁目23番地',
   status: 0,
)
end

6.times do |n|
OrderItem.create!(
   order_id: "1",
   item_id: "#{n + 1}",
   price: '900',
   making_status: 0,
   number: '8',
)
end

3.times do |n|
OrderItem.create!(
   order_id: "2",
   item_id: "#{n + 2}",
   price: '1500',
   making_status: 0,
   number: '3',
)
end

6.times do |n|
OrderItem.create!(
   order_id: "#{n + 1}",
   item_id: "#{n + 1}",
   price: '2300',
   making_status: 1,
   number: '2',
)
end
<<<<<<< HEAD
a
Genre.create!(
   name: 'マカロン',
)
=======

>>>>>>> 65c77a77d035dd50f088465a4e7115e2eaacd28e
