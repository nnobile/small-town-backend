class CreateMerchants < ActiveRecord::Migration[6.1]
  def change
    create_table :merchants do |t|
      t.string :merchant_name
      t.string :merchant_location
      t.string :merchant_category
      t.text :merchant_description

      t.timestamps
    end
  end
end
