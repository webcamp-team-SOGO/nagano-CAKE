class Public::CartItemsController < ApplicationController

  def index
    #@cart_items = current_customer.cart_items
  end

  def create
    if @cart_item.blank?
      @cart_item = current_cart.cart_items.build(item_id: params[:item_id])
    end
    @cart_item.quantity += params[:number].to_i
    @cart_item.save
    redirect_to cart_items_path
  end

  def update
  end

  def destroy
  end

  def destroy_all
  end

end
