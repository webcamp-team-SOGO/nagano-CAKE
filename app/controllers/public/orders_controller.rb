class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!

  def new
    @customer = current_customer
    @order = Order.new
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
      @address = Delivery.find_by(id: params[:order][:delivery_id])
      if @address.blank?
        redirect_to new_order_path
      else
        @order.address = @address.address
        @order.postal_code = @address.postal_code
        @order.name = @address.name
      end
    elsif params[:order][:address_option] == "2"
      @order = Order.new(order_params)
      if @order.postal_code.blank? || @order.address.blank? || @order.name.blank?
        redirect_to new_order_path
      else
        @order = Order.new(order_params)
      end
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
    @orders = current_customer.orders.order(created_at: :desc).page(params[:page]).per(10)
  end


  private

  def order_params
    params.require(:order).permit(:name, :postal_code, :address, :payment_method, :shipping, :total_payment, :customer_id)
  end

  def order_item_params
    params.require(:order_item).permit(:number, :price)
  end

end