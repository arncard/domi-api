class CreateCommerceCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :commerce_categories do |t|
      t.references :commerce, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
