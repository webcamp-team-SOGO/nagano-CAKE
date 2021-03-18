class Admins::ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def index
    @items = Item.page(params[:page]).reverse_order
    @item = Item.new
  end

  def show
  end

  def create
    @item = Item.new(params[:id])
    @item.save
    redirect_to admin_item_path(@item)
  end

  def edit
  end

  def update
  end

end
