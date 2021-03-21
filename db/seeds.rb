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
Customer.create!(
   last_name: '山田',
   first_name: '孝之',
   k_last_name: 'あああ',
   k_first_name: 'あああ',
   postal_code: '5800000',
   address: 'Osaka City',
   telephone_number: '08000000000',
   email: 's@s',
   password: 'aaaaaa',
   )
Order.create!(
   customer_id: '1',
   shipping: '800',
   total_payment: '1800',
   name: 'Jordan',
   postal_code: '5800000',
   address: 'Osaka',
   )
