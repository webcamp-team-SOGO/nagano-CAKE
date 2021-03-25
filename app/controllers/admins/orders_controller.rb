class Admins::OrdersController < ApplicationController
before_action :authenticate_admin!

  def index
    case params[:order_sort]

    when "0"
     @orders = Order.all.order(created_at: :desc).page(params[:page]).per(10)
    else
     @customer = Customer.find(params[:id])
     @orders = @customer.orders.order(created_at: :desc).page(params[:page]).per(10)
    end

  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items

  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
     redirect_to request.referer, notice: "注文ステータスを更新しました"
    else
     @order = Order.find(params[:id])
     @order_items = @order.order_items
     render admins_order_path, notice: "注文ステータスの更新に失敗しました"
    end
  end

  private
  def order_params
  	params.require(:order).permit(:status)
  end

end