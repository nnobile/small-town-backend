class MerchantSerializer < ActiveModel::Serializer
  has_many :items
  attributes :id, :merchant_name, :merchant_location, :merchant_category, :merchant_description, :merchant_image_url
end
