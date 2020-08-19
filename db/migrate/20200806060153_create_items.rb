class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null:false
      t.text :explain, nul:false
      t.integer :price, null:false
      t.integer :buyer_id
      t.integer :status_id, null:false
      t.integer :delivery_cost_id, null:false
      t.integer :area_id, null:false
      t.integer :limit_id, null:false
      t.string :brand
      t.integer :user_id, null:false
      t.integer :category_id, null:false
      t.timestamps
    end
  end
end
