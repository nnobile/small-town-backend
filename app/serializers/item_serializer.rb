class ItemSerializer < ActiveModel::Serializer
  attributes :id, :merchant_id, :item_name, :item_category, :item_price, :item_image_url
  belongs_to :merchants
end
