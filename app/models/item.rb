class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :delivery_cost
  belongs_to_active_hash :limit
  belongs_to_active_hash :area
  belongs_to_active_hash :status

  belongs_to :user
  belongs_to :category
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true

  validates :images, presence: true, length: {maximum: 1, maximum: 4}
  validates :name, presence: true
  validates :explain, presence: true
  validates :category_id, presence: true
  validates :status_id, presence: true
  validates :delivery_cost_id, presence: true
  validates :area_id, presence: true
  validates :limit_id, presence: true
  validates :price, presence: true
end
