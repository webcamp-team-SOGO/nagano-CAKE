class HomesController < ApplicationController

  def top
    @items = Item.limit(4).order(" created_at DESC ")
    #@customer = Customer.find(params[:id])
  end

  def about
  end

end
