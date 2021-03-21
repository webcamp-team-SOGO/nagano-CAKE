class Admins::OrderItemsController < ApplicationController
before_action :authenticate_admin!

  def update
    @order_item = Order_item.update(order_item_params)
  end

end
