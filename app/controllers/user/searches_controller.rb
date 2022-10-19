class User::SearchesController < ApplicationController

  #before_action :authenticate_user!

  def search
    @range = params[:range]

    if @range == "User"
      @bars = Bar.looks(params[:search], params[:word])
    else
      @tweets = Tweet.looks(params[:search], params[:word])
    end
  end

end
