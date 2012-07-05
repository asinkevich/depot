class AdminController < ApplicationController
  def index
    @total_orders_count = Order.count
  end
end
