class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :photo
      t.integer :price
      t.integer :rating
      t.boolean :active
      t.string :owner_id

      t.timestamps
    end
  end
end
