class Admin::TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
  end

  def edit
  end

  def show
    @tweet = Tweet.find(params[:id])
  end
  
  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to admin_tweets_path
  end
  
end
