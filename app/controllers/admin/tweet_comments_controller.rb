class Admin::TweetCommentsController < ApplicationController
  def destroy
    TweetComment.find(params[:id]).destroy
    redirect_to admin_tweet_path(params[:tweet_id])
  end
end
