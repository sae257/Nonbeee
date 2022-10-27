class Bar::BarsController < ApplicationController
  def index
    @bars = Bar.all
  end

  def new
    @bar = Bar.new
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
    redirect_to bar_bar_path
    else
    render :edit
    end
  end

  def bar_params
    params.require(:bar).permit(:bar_name, :bar_tel, :address, :post_code, :email)
  end

end
