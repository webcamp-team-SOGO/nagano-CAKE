class Admins::OrderItemsController < ApplicationController
before_action :authenticate_admin!

  def update
    if
      @order_item = OrderItem.find(params[:id])
      @order_item.update(order_item_params)
      redirect_to request.referer, notice: "製作ステータスを更新しました"
    else
      @order_item = OrderItem.find(params[:id])
      @order_item.update(order_item_params)
      render request.referer, notice: "製作ステータスの更新に失敗しました"
    end
  end

  private
  def order_item_params
    params.require(:order_item).permit(:making_status)
  end

end
