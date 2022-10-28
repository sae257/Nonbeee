class Admin::BarsController < ApplicationController
  def index
    @bars = Bar.all
  end

  def new
  end

  def edit
    @bar = Bar.find(params[:id])
  end

  def show
    @bar = Bar.find(params[:id])
  end
  
  def update
    @bar = Bar.find(params[:id])
    @bar.present?
    if @bar.update(bar_params)
    redirect_to admin_bar_path(@bar.id)
    else
    render :edit
    end
  end
  
  private

  def bar_params
    params.require(:bar).permit(:bar_name, :bar_tel, :address, :post_code, :email, :is_deleted)
  end
  
end
