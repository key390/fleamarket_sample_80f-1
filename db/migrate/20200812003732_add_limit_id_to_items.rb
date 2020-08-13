class AddLimitIdToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :limit_id, :integer
  end
end
