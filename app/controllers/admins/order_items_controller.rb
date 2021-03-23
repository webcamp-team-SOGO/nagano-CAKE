class Admins::OrderItemsController < ApplicationController
before_action :authenticate_admin!

  def update
    @order_item = OrderItem.find(params[:id])
    @order_item.update(order_item_params)
    redirect_to request.referer, notice: "更新しました"
  end

  private
  def order_item_params
    params.require(:order_item).permit(:making_status)
  end

end
