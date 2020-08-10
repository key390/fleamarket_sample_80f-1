class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :delivery_cost
  belongs_to_active_hash :limit
  belongs_to_active_hash :area
  belongs_to_active_hash :status
  belongs_to :brand
  belongs_to :category
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true
end
