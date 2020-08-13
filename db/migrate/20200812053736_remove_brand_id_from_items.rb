class RemoveBrandIdFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :brand_id, :integer
  end
end
