class AddRatingToCommerce < ActiveRecord::Migration[5.1]
  def change
    add_column :commerces, :rating, :string
  end
end
