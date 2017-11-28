class Category < ApplicationRecord
  has_many :commerce_categories
  has_many :commerces, through: :commerce_categories

end
