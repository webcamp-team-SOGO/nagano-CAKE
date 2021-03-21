class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :last_name, presence: true
         validates :first_name, presence: true
         validates :k_last_name, presence: true
         validates :k_first_name, presence: true
         validates :postal_code, presence: true
         validates :address, presence: true
         validates :telephone_number, presence: true, uniqueness: true
         validates :email, presence: true, uniqueness: true

  has_many :deliveries
  has_many :orders, dependent: :destroy
<<<<<<< HEAD
  
    
=======

>>>>>>> e69ee0dda8bec2ac87f551a3a620e136378a1334
end
