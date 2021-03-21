class Admins::OrdersController < ApplicationController
before_action :authenticate_admin!

  def index

    case params[:order_sort]

    when "0"
     @orders = Order.page(params[:page]).per(10)
    else
     @customer = Customer.find(params[:id])
     @orders = @customer.orders.page(params[:page]).per(10)
    end

  end

  def show
  end

  def update
  end

end
