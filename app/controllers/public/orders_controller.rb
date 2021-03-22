class Public::OrdersController < ApplicationController

  def new
  end

  def show
    #@cart_items = current_customer.cart_items
    @order = Order.find(params[:id])

    @order_items = OrderItem.all
  end

  def confirm
    #byebug
    @delivery = Delivery.find(params[:id])
    @order = Order.find(params[:id])
    @item = Item.find(params[:id])
    @order_items = @item.order_items
    @tatal_payment = OrderItem.sum(:price)
    @shipping = @order.shipping
    @tatal_payments = @tatal_payment + @shipping
  end

  def create
  end

  def thanks
  end

  def index
  end



end
