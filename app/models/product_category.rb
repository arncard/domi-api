class ProductCategory < ApplicationRecord
  belongs_to :commerce
	has_many :products
end
