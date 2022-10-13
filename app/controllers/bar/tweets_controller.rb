class Bar::TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def show
    @tweet = Tweet.find(params[:id])
    #id持たせないとアソシエーションする
  end
  
  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
    redirect_to bar_tweets_path
    else
    render :new
    end
  end
  
  def update
    @tweet = Tweet.find(params[:id])
    @tweet.present?
    if @tweet.update(tweet_params)
    redirect_to bar_tweets_path
    else
    render :edit
    end
  end
  
   private

  def tweet_params
  params.require(:tweet).permit(:title, :body, :genre_id)
  end
  
end