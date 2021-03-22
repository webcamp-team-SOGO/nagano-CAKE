class Public::OrdersController < ApplicationController

  def new
  end

  def show
    #@cart_items = current_customer.cart_items
    @order = Order.find(params[:id])

    @order_items = OrderItem.all
  end

  def confirm
    #@cart_items = Cart_item.find(params[:id])
    @item = @cart_items.item
    @taxfree = (@item.taxfree * 1.1).round
  end

  def create
  end

  def thanks
  end

  def index
  end



end
