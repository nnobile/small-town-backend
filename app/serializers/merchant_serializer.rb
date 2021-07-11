class MerchantSerializer < ActiveModel::Serializer
  attributes :id, :merchant_name, :merchant_location, :merchant_category, :merchant_description, :merchant_image_url
  has_many :items
end
