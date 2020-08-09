class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :post, null: false
      t.string :orefectures, null: false
      t.string :city, null: false
      t.string :number, null: false
      t.string :building
      t.string :phone, null: false
      t.references :user
      t.timestamps
    end
    add_index :addresses, :phone, unique: true
  end
end
