class Bar::TweetsController < ApplicationController
  def index
    @tweets = current_bar.tweets
  end

  def new
    @tweet = Tweet.new
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def show
    @tweet = Tweet.find(params[:id])
    #アソシエーションする
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.bar_id = current_bar.id
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

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to bar_tweets_path
  end

   private

  def tweet_params
  params.require(:tweet).permit(:title, :body, :genre_id, :image)
  end

  def set_genre
  @genres = Genre.all
  end

end
