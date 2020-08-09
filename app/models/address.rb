class Address < ApplicationRecord
  belongs_to :user, optional: true
  validates :post, :prefectures, :city, :number, :building, :phone, presence: true
end
