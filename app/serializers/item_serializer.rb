class ItemSerializer < ActiveModel::Serializer
  attributes :id, :merchant_id, :name, :category, :price, :image_url
  belongs_to :merchants
end
