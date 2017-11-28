class CommerceSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :email, :website, :logo#, :categories

  has_many :categories
end
