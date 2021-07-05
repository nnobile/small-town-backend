class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :item_id
      t.string :item_name
      t.string :item_category
      t.text :item_description
      t.float :item_price

      t.timestamps
    end
  end
end
