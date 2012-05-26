class AddPriceToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :price, :integer, default: 0

  end
end
