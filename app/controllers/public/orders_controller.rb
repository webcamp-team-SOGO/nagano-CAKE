class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!

  def new
    @order = Order.new
    @deliveries = Delivery.where(customer: current_customer)
  end

  def show
    #@cart_items = current_customer.cart_items
    @order = Order.find(params[:id])
    
    @order_items = OrderItem.all
  end

  def confirm
    #@cart_items = Cart_item.find(params[:id])
    #@item = @cart_items.item
    #@taxfree = (@item.taxfree * 1.1).round
  end

  def create
  end

  def thanks
  end

  def index
    @orders = current_customer.orders
  end



end
