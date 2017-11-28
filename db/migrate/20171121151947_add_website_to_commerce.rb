class AddWebsiteToCommerce < ActiveRecord::Migration[5.1]
  def change
    add_column :commerces, :website, :string
  end
end
