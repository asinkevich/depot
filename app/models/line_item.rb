class LineItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :product

  def total_price
    price * quantity
  end
end
