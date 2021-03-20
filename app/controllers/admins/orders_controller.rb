class Admins::OrdersController < ApplicationController

  def index
    case params[:order_sort]

    when "0"
     @user = User.find(params[:id])
     @orders = @user.orders.page(params[:page]).per(10)
    else
     @orders = Order.page(params[:page]).per(10)
    end

  end

  def show
  end

  def update
  end

end
