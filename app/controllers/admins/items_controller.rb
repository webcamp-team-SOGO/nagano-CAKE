class Admins::ItemsController < ApplicationController

  def new
    @item = Item.new
    @items = Item.all
  end

  def index
    @items = Item.page(params[:page]).per(10)
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admins_item_path(@item)
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  private
  def item_params
    params.require(:item).permit(:image, :name, :introduction, :genre_id, :genre, :taxfree, :is_valid)
  end

end
