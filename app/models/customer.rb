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
         validates :telephone_number, presence: true
         validates :email, presence: true
end
