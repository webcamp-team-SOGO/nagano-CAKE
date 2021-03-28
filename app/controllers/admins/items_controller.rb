class Admins::ItemsController < ApplicationController
before_action :authenticate_admin!
  def new
    @item = Item.new
    @items = Item.all
  end

  def index
    @items = Item.page(params[:page]).per(10)
    @genre = Genre.all
    if params[:name].present?
    @genre = @genre.get_by_name params[:name]
    end
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
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to admins_item_path
    else
      render "edit"
    end
  end
  
  

  private
  def item_params
    params.require(:item).permit(:image, :name, :introduction, :genre_id, :genre, :taxfree, :is_valid)
  end

end
