class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!

  def new
    @order = Order.new
    @customer = current_customer
    @deliveries = Delivery.where(customer: current_customer)
  end

  def show
    @order = Order.find(params[:id])
    @order_items = OrderItem.all
  end

  def confirm
    @order = Order.find_or_initialize_by(id: params[:id])
    @order.assign_attributes(order_params)
    # @order_item = OrderItem.find_or_initialize_by(id: params[:id])
    @order_item = OrderItem.new
    # @order_item.assign_attributes(order_item_params)
    @customer = current_customer
    @cart_items = @customer.cart_items
    @total_payment = (@cart_items.to_a.sum{|x| x.item.taxfree * x.number} * 1.1).floor.to_s(:delimited)
  end

  def create
    @order = Order.new(order_params)
    @order.save
    @order_item = OrderItem.new(order_item_params)
    @order_item.save
    redirect_to orders_thanks_path
  end

  def thanks
  end

  def index
    @orders = current_customer.orders
  end


  private

  def order_params
    params.require(:order).permit(:name, :postal_code, :address, :payment_method, :shipping, :total_payment)
  end

  def order_item_params
    params.permit(:number, :price )
  end

end
