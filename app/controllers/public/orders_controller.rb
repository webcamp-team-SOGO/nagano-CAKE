class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!

  def new
    @customer = current_customer
    @order = Order.new
    @customer = current_customer
    @deliveries = Delivery.where(customer: current_customer)
  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
  end

  def confirm
    @order = Order.new(customer_id: current_customer, payment_method: params[:order][:payment_method])

    if params[:order][:address_option] == "0"
      @order.address = current_customer.address
      @order.postal_code = current_customer.postal_code
      @order.name = current_customer.last_name + current_customer.first_name
    elsif params[:order][:address_option] == "1"
      @address = Delivery.find(params[:order][:delivery_id])
      @order.address = @address.address
      @order.postal_code = @address.postal_code
      @order.name = @address.name
    elsif params[:order][:address_option] == "2"
      @order = Order.new(order_params)
    end

    @order_item = OrderItem.new
    @customer = current_customer
    @cart_items = @customer.cart_items

    array = []
    @cart_items.all.each do |cart_item|
      array << (cart_item.item.taxfree * cart_item.number * 1.1)
    end

    @total_payment = array.sum

  end

  def create
    @customer = current_customer
    @order = Order.new(order_params)
    @order.save
    @cart_items = @customer.cart_items

    @cart_items.each do |cart_item|
      OrderItem.create(
        order_id: @order.id,
        item_id: cart_item.item.id,
        price: cart_item.item.taxfree * 1.1,
        number: cart_item.number
        )
    end

    @cart_items.destroy_all

    redirect_to order_thanks_path
  end

  def thanks
  end

  def index
    @orders = current_customer.orders
  end


  private

  def order_params
    params.require(:order).permit(:name, :postal_code, :address, :payment_method, :shipping, :total_payment, :customer_id)
  end

  def order_item_params
    params.require(:order_item).permit(:number, :price)
  end

end