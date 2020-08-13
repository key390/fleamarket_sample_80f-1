class RenameNameColumnToImages < ActiveRecord::Migration[6.0]
  def change
    rename_column :images, :name, :image
  end
end
