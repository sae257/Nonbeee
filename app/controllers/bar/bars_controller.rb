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
  
  def create
    @bar = Bar.new(bar_params)
    @bar.save
    render :show
  end
  
  def bar_params
    params.require(:bar).permit(:title, :body)
  end
  
end
