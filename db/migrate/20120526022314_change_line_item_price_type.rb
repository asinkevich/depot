class ChangeLineItemPriceType < ActiveRecord::Migration
  def up
    change_column :line_items, :price, :decimal, precision: 8, scale: 2, default: 0.0
  end

  def down
    change_column :line_items, :price, :integer
  end
end
