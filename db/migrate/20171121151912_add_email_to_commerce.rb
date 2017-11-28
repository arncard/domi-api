class AddEmailToCommerce < ActiveRecord::Migration[5.1]
  def change
    add_column :commerces, :email, :string
  end
end
