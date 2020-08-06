class AddBrandIdToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :brand_id, :integer
  end
end
