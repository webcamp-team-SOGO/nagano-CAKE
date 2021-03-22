# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.create!(
      email: "momo@momo",
      last_name: "mo",
      first_name: 'momo',
      k_last_name: "momo",
      k_first_name: "mmo",
      postal_code: '1600022',
      address: "momo",
      telephone_number: "0000000",
      password: "momomomo",
      is_valid: "true",
    )

Admin.create!(
   email: 'test@test.com',
   password: 'testtest',
)

Delivery.create!(
   customer_id: '1',
   name: 'momo',
   postal_code: '0000',
   address: 'momo',
)
Genre.create!(
   name: 'プリン',
)

Item.create!(
      genre_id: "1",
      name: "お菓子",
      introduction: "おいしいよ！",
      taxfree: "1200",
      is_valid: 'true',
   )


Order.create!(
   customer_id: '1',
   shipping: '800',
   total_payment: '1000000',
   payment_method: 'クレジットカード',
   name: 'momo',
   postal_code: '0009',
   address: 'momo',
   status: '製作中',
   )

   OrderItem.create!(
      order_id: '1',
      item_id: '1',
      price: '1000',
      number: '1'
      )
