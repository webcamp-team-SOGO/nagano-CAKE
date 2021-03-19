class Public::ItemsController < ApplicationController
  def index
    @items = Item.all
    @kaminari = Item.page(params[:page]).per(8)
  end

  def show
    
  end
end
