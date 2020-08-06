class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null:false
      t.text :explain, nul:false
      t.string :status, null:false
      t.integer :delivery_cost, null:false
      t.string :area, null:false
      t.string :limit, null:false
      t.integer :price, null:false
      t.timestamps
    end
  end
end
