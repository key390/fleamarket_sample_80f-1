class Item < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true
end
