class User::BarsController < ApplicationController

  def index
    @bars = Bar.all
  end

  def show
    @bar = Bar.find(params[:id])
    @tweets = @bar.tweets
    @review = Review.new
  end

end
