class Public::DeliveriesController < ApplicationController
  before_action :set_delivery, only:[:edit, :update, :destroy]
  before_action :authenticate_customer!

  def index
    @delivery = Delivery.new
    @deliveries = current_customer.deliveries
  end

  def create
    @deliveries = current_customer.deliveries
    @delivery = Delivery.new(delivery_params)
    @delivery.customer_id = current_customer.id
    if @delivery.save
    else
      @deliveries = current_customer.deliveries
      render :index
    end
  end

  def destroy
    @deliveries = current_customer.deliveries
    @delivery = Delivery.find(params[:id])
    @delivery.destroy
  end

  def edit
    @delivery = Delivery.find(params[:id])
  end

  def update
    @delivery = Delivery.find(params[:id])
    if @delivery.update(delivery_params)
      redirect_to deliveries_path
    else
      render :edit
    end
  end

  private
  def delivery_params
    params.require(:delivery).permit(:postal_code, :address, :name)
  end

  def set_delivery
    @delivery = Delivery.find(params[:id])
  end

end
