class Public::TavernsController < ApplicationController
  def new
    @tavern = Tavern.new
  end

  def index
    @taverns = Tavern.all
  end

  def show
    @tavern = Tavern.find(params[:id]) 
  end

  def edit
    @tavern = Tavern.find(params[:id])
  end
  
  def create
    @tavern = Tavern.new(tavern_params)
    @taverns = Tavern.all
    @tavern.save
    render :index
  end
  
  def update
    @tavern = Tavern.find(params[:id])
    @tavern.present?
    if @tavern.update(tavern_params)
    redirect_to tavern_path(@tavern.id)
    else
    render :edit
    end
  end
  
  def tavern_params
    params.require(:tavern).permit(:name, :title, :body)
  end
  
end
