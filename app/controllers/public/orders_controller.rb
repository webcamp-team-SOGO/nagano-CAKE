class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!

  def new
    @order = Order.new
    @deliveries = Delivery.where(customer: current_customer)
  end

  def show
    @order = Order.find(params[:id])
    @order_items = OrderItem.all
  end

  def confirm
    @order_item = OrderItem.find(params[:id])
    #@cart_items =
  end

  def create
    @order = Order.new(delivery_params)
    @order.save
  end

  def thanks
  end

  def index
  end
  private
  def delivery_params
    params.require(:order).permit(:name, :postal_code, :address)
  end
end
