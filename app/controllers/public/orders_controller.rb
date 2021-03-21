class Public::OrdersController < ApplicationController

  def new
  end

  def confirm
    @item = Item.find(params[:id])
    @cart_items = Cart_item.find(params[:id])
    @taxfree = (@item.taxfree * 1.1).round
  end

  def create
  end

  def thanks
  end

  def index
  end

  def show
  end

end
