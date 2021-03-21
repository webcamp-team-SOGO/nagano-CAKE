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

<<<<<<< HEAD
Item.create!(
   name: 'いちごのショートケーキ',
   introduction:'栃木県産のとちおとめを贅沢に使用しています。',
   taxfree: '2750',
)

Item.create!(
   name: 'test2',
   taxfree: '1500',
)

Item.create!(
   name: 'test3',
   taxfree: '1500',
)

Item.create!(
   name: 'test4',
   taxfree: '1500',
)
4.times do |n|
   Item.create!(
      genre_id: "#{n + 1}",
      name: "お菓子#{n + 1}",
      introduction: "おいしいよ！#{n + 1}",
      taxfree: "1200#{n + 1}",
      is_valid: 'true',
=======
Delivery.create!(
   customer_id: '15',
   name: 'momo',
   postal_code: '0000',
   address: 'momo',
>>>>>>> e69ee0dda8bec2ac87f551a3a620e136378a1334
   )
