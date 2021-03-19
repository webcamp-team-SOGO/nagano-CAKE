class Admins::ItemsController < ApplicationController

  def new
    @item = Item.new
    @items = Item.all
    # @genres = Genre.all
  end

  def index
    @items = Item.all
    @item = Item.new
    @item_k = Item.page(params[:page]).per(10)
  end

  def show
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to admins_item_path(@item)
  end

  def edit
  end

  def update
  end

  private
  def item_params
    params.require(:item).permit(:image, :name, :introduction, :taxfree, :is_valid)
    #後ほどジャンル追加する
  end

end
