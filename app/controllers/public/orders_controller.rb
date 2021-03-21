class Public::OrdersController < ApplicationController

  def new
  end

  def show
    @order = Order.find(params[:id])
    @order_items = Order_item.all
  end

  def confirm
    @cart_items = Cart_item.find(params[:id])
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
