class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 10, scale: 2
      t.string :image
      t.references :product_category, foreign_key: true

      t.timestamps
    end
  end
end
