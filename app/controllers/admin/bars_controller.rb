class Admin::BarsController < ApplicationController
  def index
    @bars = Bar.all
  end

  def new
  end

  def edit
  end

  def show
  end
end
