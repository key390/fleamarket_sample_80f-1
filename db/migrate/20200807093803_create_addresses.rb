class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :post, null: false
      t.string :prefectures, null: false
      t.string :city, null: false
      t.string :number, null: false
      t.string :building
      t.string :phone
      t.references :user, foreign_key: true
      t.timestamps
    end
    add_index :addresses, :phone, unique: true
  end
end
