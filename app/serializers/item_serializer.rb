class ItemSerializer < ActiveModel::Serializer
  attributes :id, :merchant_id, :name, :category, :price, :image_url, :description
  belongs_to :merchant
end
