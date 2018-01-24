class Commerce < ApplicationRecord

	has_many :reviews
  has_many :commerce_categories
  has_many :categories, through: :commerce_categories
	has_many :product_categories
  
  scope :filter_category, ->(cat){
    joins(:categories).where('categories.name = ?', cat) if cat.present?
  }

  scope :search, ->(name) {
    where('lower(name) LIKE ?', "%#{name.downcase}%") if name.present?
  }


end
