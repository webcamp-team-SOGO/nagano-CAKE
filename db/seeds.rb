# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



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

Genre.create!(
   name: '焼き菓子',
)

Genre.create!(
   name: 'プリン',
)

Genre.create!(
   name: 'ケーキ',
)

Genre.create!(
   name: 'マカロン',
)

Order.create!(
   customer_id: '1',
   shipping: '800',
   total_payment: '2500',
   payment_method: 0,
   name: '毛利小五郎',
   postal_code: '111-1111',
   address: '東京都米花市米花町5丁目23番地',
   status: 1,
)

Order.create!(
   customer_id: '1',
   shipping: '800',
   total_payment: '2500',
   payment_method: 1,
   name: '毛利小五',
   postal_code: '111-1112',
   address: '東京都米花市米花町5丁目22番地',
   status: 0,
)
4.times do |n|
   Item.create!(
      genre_id: "#{n + 1}",
      name: "お菓子#{n + 1}",
      image_id: 'logo1.jpg',
      introduction: "おいしいよ！#{n + 1}",
      taxfree: "1200#{n + 1}",
      is_valid: 'true',
   )
end


OrderItem.create!(
   order_id: '1',
   item_id: '1',
   price: '900',
   making_status: 1,
   number: '8',
)

OrderItem.create!(
   order_id: '1',
   item_id: '2',
   price: '2300',
   making_status: 2,
   number: '3',
)