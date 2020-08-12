class AddAreaIdToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :Area_id, :integer
  end
end
