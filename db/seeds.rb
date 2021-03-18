# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.create!(
   email: 'yes@no.com',
   last_name: 'yes',
   first_name: 'no',
   k_last_name: 'yes',
   k_first_name: 'no',
   postal_code: '1600022',
   address: '東京都新宿区新宿２丁目５−１０ 成信ビル 4階',
   telephone_number: '09012345678',
   password: 'password',
)

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