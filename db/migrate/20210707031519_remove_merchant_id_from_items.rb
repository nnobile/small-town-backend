class RemoveMerchantIdFromItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :items, :merchant_id, :integer
  end
end
