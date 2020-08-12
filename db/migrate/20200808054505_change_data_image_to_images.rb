class ChangeDataImageToImages < ActiveRecord::Migration[6.0]
  def change
    change_column :images, :image, :text
  end
end
