class Admins::CustomersController < ApplicationController
before_action :authenticate_admin!


  def search
    redirect_to root_path if params[:word] == "" # キーワードが入力されていないとトップページに飛ぶ
    @range = params[:range]
		@search = params[:search]
		@word = params[:word]
		if @range == '1'
			@customers = Customer.search(@search,@word)
		elsif @range == '2'
			@items = Item.search(@search,@word)
	  elsif @range == '3'
		  @genres = Genre.search(@search,@word)
		end
  end

  def index
     @customers = Customer.page(params[:page]).per(10)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to admins_customer_path(@customer), notice: "更新しました"
    else
      render "edit"
    end
  end


  private
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :k_last_name, :k_first_name, :postal_code, :address, :telephone_number, :email, :is_valid)
  end
end
