class CopyProductPriceToLineItems < ActiveRecord::Migration
  def up
    LineItem.all.each do |item|
      item.price = item.product.price
      item.save
    end
  end

  def down
    LineItem.update_all(price: 0)
  end
end
