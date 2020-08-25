class Address < ApplicationRecord
  belongs_to :user, optional: true
  validates :post, :prefectures, :city, :number, presence: true
end
