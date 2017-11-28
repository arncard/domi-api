class CommerceFinder

  def find_commerce(category, location)
    Commerce.where(categories: category, location: location)
  end
end
