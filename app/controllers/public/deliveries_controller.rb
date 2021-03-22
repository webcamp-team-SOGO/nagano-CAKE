class Public::DeliveriesController < ApplicationController
  before_action :set_delivery, only:[:edit, :update, :destroy]

  def index
    @delivery = Delivery.new
    @deliveries = current_customer.deliveries
  end

  def create
    @delivery = Delivery.new(delivery_params)
    @delivery.customer_id = current_customer.id
    if @delivery.save
      redirect_to deliveries_path
    else
      render:index
    end
  end

  def destroy
    @delivery = Delivery.find(params[:id])
    @delivery.destroy
    redirect_to deliveries_path
  end

  def edit
    @delivery = Delivery.find(params[:id])
  end

  def update
    @delivery = Delivery.find(params[:id])
    if @delivery.update(delivery_params)
      redirect_to deliveries_path
    else
      render :index
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
