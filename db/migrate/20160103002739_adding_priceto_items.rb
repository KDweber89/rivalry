class AddingPricetoItems < ActiveRecord::Migration
  def change
    add_column :items, :price, :integer, limit: 4
  end
end
