class RenameItemsColumns < ActiveRecord::Migration[6.1]
  def change
    rename_column :items, :item_category, :category
    rename_column :items, :item_description, :description
    rename_column :items, :item_price, :price
    rename_column :items, :item_image_url, :image_url
  end
end
