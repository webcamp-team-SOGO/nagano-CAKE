class Public::OrdersController < ApplicationController

  def new
  end

  def confirm
    
    @cart_items = Cart_item.all
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
