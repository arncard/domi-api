class CreateProductCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :product_categories do |t|
      t.string :name
      t.references :commerce, foreign_key: true

      t.timestamps
    end
  end
end
