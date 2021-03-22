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
    @order = Order.find_or_initialize_by(id: params[:id])
    @order.assign_attributes(order_params)
    @order_item = OrderItem.find_or_initialize_by(id: params[:id])
    @order_item.assign_attributes(order_item_params)
    @customer = current_customer
    @cart_items = @customer.cart_items
  end

  def create
    #byebug
    @order = Order.new(order_params)
    @order.save
    @order_item = OrderItem.new(order_item_params)
    @order_item.save
    redirect_to root_path
  end

  def thanks
  end

  def index
    @orders = current_customer.orders
  end


  private

  def order_params
    params.permit(:name, :postal_code, :address, :payment_method, :delivery_address)
  end

  def order_item_params
    params.permit(:number, :price )
  end

end
