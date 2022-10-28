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
    redirect_to bar_bar_path(@bar.id)
    else
    render :edit
    end
  end
  
  def unsubscribe
    @bar = current_bar
  end

  def withdraw
    @bar = current_bar
    @bar.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end
  
  private

  def bar_params
    params.require(:bar).permit(:bar_name, :bar_tel, :address, :post_code, :email, :is_deleted)
  end

end
