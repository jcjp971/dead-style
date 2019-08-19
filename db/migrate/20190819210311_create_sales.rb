class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true
      t.date :date
      t.boolean :paid

      t.timestamps
    end
  end
end
