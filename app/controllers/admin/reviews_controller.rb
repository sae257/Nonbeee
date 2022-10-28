class Admin::ReviewsController < ApplicationController
  def index
    @bar = Bar.find(params[:bar_id])
    @reviews = @bar.reviews
  end

  def destroy
    Review.find(params[:id]).destroy
    redirect_to admin_bar_reviews_path(params[:bar_id])
  end

end
