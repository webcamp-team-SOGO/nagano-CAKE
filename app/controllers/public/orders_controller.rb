class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!

  def new
    @order = Order.new
    @deliveries = Delivery.where(customer: current_customer)
  end

  def confirm
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
