class AddMerchantImageUrlToMerchants < ActiveRecord::Migration[6.1]
  def change
    add_column :merchants, :merchant_image_url, :string
  end
end
