class Public::CustomersController < ApplicationController
  def new
  end

  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = current_customer
  end
  
  
   private

  def customer_params
    params.require(:customer).permit(:name_first, :name_second, :name_firdt_rubi, :name_second_rubi, :tel,  :email)
  end
end
