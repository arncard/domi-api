class CommerceSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :email, :website, :logo, :rating

  has_many :categories
end
