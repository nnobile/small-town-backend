class RenameMerchantsColumns < ActiveRecord::Migration[6.1]
  def change
    rename_column :merchants, :merchant_name, :name
    rename_column :merchants, :merchant_location, :location
    rename_column :merchants, :merchant_category, :category
    rename_column :merchants, :merchant_description, :description
    rename_column :merchants, :merchant_image_url, :image_url
  end
end
