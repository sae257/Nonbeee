class User::SearchesController < ApplicationController

  before_action :authenticate_user!

  def search
    @range = params[:range]

    if @range == "Bar"
      @bars = Bar.looks(params[:word])
    else
      @tweets = Tweet.looks( params[:word])
    end
  end

end
