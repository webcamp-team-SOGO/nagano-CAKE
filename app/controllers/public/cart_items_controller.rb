class Public::CartItemsController < ApplicationController
  before_action :setup_cart_item!, only: [:index, :update, :destroy]
  before_action :authenticate_customer!

  def index
    @cart_items = current_customer.cart_items
    @numbers = (1..100).to_a
  end

  def create
      if @cart_item.number == 0
        redirect_to request.referer
      else
        @cart_items = current_customer.cart_items.all
        @cart_items.each do |cart_item|
          if cart_item.item_id == @cart_item.item_id
            new_number = cart_item.number + @cart_item.number
            cart_item.update_attribute(:number, new_number)
            @cart_item.delete
          end
        end
        @cart_item.save
        redirect_to cart_items_path
      end
  end

  def update
    @cart_item.update(number: params[:number].to_i)
    redirect_to cart_items_path
  end

  def destroy
    @cart_item.destroy
    redirect_to cart_items_path
  end

  def destroy_all
    current_customer.cart_items.destroy_all
    redirect_to cart_items_path
  end

  private

  def setup_cart_item!
    @cart_item = current_customer.cart_items.find_by(item_id: params[:item_id])
  end

end
