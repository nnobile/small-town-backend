class ItemSerializer < ActiveModel::Serializer
  belongs_to :merchants
  attributes :id, :merchant_id, :item_name, :item_category, :item_price, :item_image_url
end
