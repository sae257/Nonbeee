class User::TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def edit
  end

  def show
    @tweet = Tweet.find(params[:id])
    @tweet_comment = TweetComment.new
  end
end
