class MerchantSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :category, :description, :image_url
  has_many :items
end
