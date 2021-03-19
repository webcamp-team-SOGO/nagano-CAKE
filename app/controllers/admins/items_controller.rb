class Admins::ItemsController < ApplicationController

  def new
    @item = Item.new
    @items = Item.all
    @genres = Genre.all
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
    if @item.save
      redirect_to admins_item_path(@item)
    else
      render "index"
    end
  end

  def edit
  end

  def update
  end

  private
  def item_params
    params.require(:item).permit(:image, :name, :introduction, :genre, :taxfree, :is_valid)
  end

end
