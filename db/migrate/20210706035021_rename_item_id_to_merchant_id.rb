class RenameItemIdToMerchantId < ActiveRecord::Migration[6.1]
  def change
    rename_column :items, :item_id, :merchant_id
  end
end
