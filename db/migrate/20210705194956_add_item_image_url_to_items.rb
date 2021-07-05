class AddItemImageUrlToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :item_image_url, :string
  end
end
