class Bar::HomesController < ApplicationController
  def top
    @bar = current_bar
    @review = Review.new
  end
end
