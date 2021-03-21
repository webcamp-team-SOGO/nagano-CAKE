class Admins::OrdersController < ApplicationController
before_action :authenticate_admin!

  def index

    case params[:order_sort]

    when "0"
     @orders = Order.page(params[:page]).per(10)
    else
     @customer = Customer.find(params[:id])
     @orders = @customer.orders.page(params[:page]).per(10)
    end

  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to request.referer, notice: "更新しました"
    else
      render "show", notice: "更新に失敗しました"
    end
  end

private
  def order_params
    params.require(:order).permit(:status)
  end

end