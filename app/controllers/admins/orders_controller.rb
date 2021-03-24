class Admins::OrdersController < ApplicationController
before_action :authenticate_admin!

  def index
    case params[:order_sort]

    when "0"
     @orders = Order.page(params[:page]).per(10)
    else
     @customer = Customer.find(params[:id])
     @orders = Customer.order.page(params[:page]).per(10)
    end

  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items

  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    # flash[:success] = "更新に成功しました"
    redirect_to admins_order_path
  end

  private
  def order_params
  	params.require(:order).permit(:status)
  end

end