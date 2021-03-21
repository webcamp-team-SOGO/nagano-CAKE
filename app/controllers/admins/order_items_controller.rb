class Admins::OrderItemsController < ApplicationController
before_action :authenticate_admin!

  def update
    @order_item = OrderItem.find(params[:id])
    @order_item.update(order_item.params)
    flash[:success] = "更新に成功しました"
      redirect_to request.referer
  end
  private
  def order_item_params
    params.require(:order_item).permit(:order_id, :item_id, :price, :number, [:id, :making_status])
  
end
