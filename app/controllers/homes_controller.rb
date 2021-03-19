class HomesController < ApplicationController

  def top
    @items = Item.limit(4).order(" created_at DESC ")
    #@customer = current_customer
  end

  def about
  end

end
