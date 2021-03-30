class Admins::OrderItemsController < ApplicationController
before_action :authenticate_admin!

  def update
    @order = Order.find(params[:id])
    @order_item = OrderItem.find_by(id: params[:order_item][:order_item_id])
    if @order_item.update(order_item_params)
      if @order.order_items.pluck(:making_status).include?("製作中")
         @order.status = 2
         @order.save
      elsif
         @order.order_items.pluck(:making_status).all?{|status|status == "製作完了"}
         @order.status = 3
         @order.save
      end
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
