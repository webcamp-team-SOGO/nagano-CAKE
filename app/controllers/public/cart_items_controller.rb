class Public::CartItemsController < ApplicationController
  before_action :setup_cart_item!, only: [:index, :update, :destroy]

  def index
    @cart_items = current_cart.cart_items
  end

  def create
    if @cart_item.blank?
      @cart_item = current_customer.cart_items.build(item_id: params[:item_id])
    end
      @cart_item.number = params[:number].to_i
      @cart_item.save
      redirect_to cart_items_path
  end

  def update
    @cart_item.update(number: params[:number].to_i)
    #flash[:success] = "#{@cart_item.item.name}の数量を変更しました"
    redirect_to cart_items_path
  end

  def destroy
    @cart_item.destroy
    #flash[:danger] = "#{@cart_item.item.name}を削除しました"
    redirect_to cart_items_path
  end

  def destroy_all
    current_customer.cart_items.destroy_all
    redirect_to cart_items_path
    #flash[:info] = 'カートを空にしました。'
  end
  
  private

  def setup_cart_item!
    @cart_item = current_customer.cart_items.find_by(item_id: params[:item_id])
  end

end
