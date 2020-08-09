class Address < ApplicationRecord
  belongs_to :user, optional: true
  validates :post, :orefectures, :city, :number, :building, :phone, presence: true
end
