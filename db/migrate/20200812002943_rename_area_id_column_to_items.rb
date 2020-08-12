class RenameAreaIdColumnToItems < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :Area_id, :area_id
  end
end
