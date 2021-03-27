class SearchesController < ApplicationController

def search
	@range = params[:range]
	search = params[:search]
	word = params[:word]
	if @range == '1'
		@item = Item.search(search,word)
	else
		@customer = Customer.search(search,word)
	end
end

end
