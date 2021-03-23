class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!

  def new
    @customer = current_customer
    @order = Order.new
    @deliveries = Delivery.where(customer: current_customer)
  end

  def show
    @order = Order.find(params[:id])
    @order_items = OrderItem.all
  end

  def confirm
    @order = Order.new(customer_id: current_customer, payment_method: params[:order][:payment_method])
    #@address = Delivery.find(params[:order][:delivery_id])
    if params[:order][:adress_option] == "0"
      @order.adress = current_customer.adress
      @order.postal_code = current_customer.postal_code
      @order.name = current_customer.last_name + first_name
    elsif params[:order][:adress_option] == "1"
      @order.adress = @address.address
      @order.postal_code = @address.postal_code
      @order.name = @address.name
    elsif params[:order][:adress_option] == "2"
      @order = Order.new(order_params)
    end
    @customer = current_customer
    @cart_items = @customer.cart_items
    @total_payment = (@cart_items.to_a.sum{|x| x.item.taxfree * x.number} * 1.1).floor.to_s(:delimited)
  end

  def create
    #byebug
    @order = Order.new(order_params)
    @order_item = OrderItem.new(order_item_params)
    @order.save
    @order_item.save
    redirect_to homes_thanks_path
  end

  def index
    @orders = current_customer.orders
  end


  private

  def order_params
    params.require(:order).permit(:name, :postal_code, :address, :payment_method, :shipping, :total_payment )
  end

  def order_item_params
    params.require(:order_item).permit(:number, :price )
  end

end
