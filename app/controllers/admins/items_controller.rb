class Admins::ItemsController < ApplicationController

  def new
  end

  def index
  end

  def show
  end

  def create
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
  end

end
