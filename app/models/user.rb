class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, :firstname, :lastname, :first_hurigana, :last_hurigana, :birthday ,presence: true
  has_one :address
  has_many :cards
end
