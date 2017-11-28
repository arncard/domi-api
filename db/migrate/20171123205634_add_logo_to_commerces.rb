class AddLogoToCommerces < ActiveRecord::Migration[5.1]
  def change
    add_column :commerces, :logo, :string
  end
end
