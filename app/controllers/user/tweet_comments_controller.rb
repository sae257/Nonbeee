class User::TweetCommentsController < ApplicationController
  def create
    tweet = Tweet.find(params[:tweet_id])
    comment = current_user.tweet_comments.new(tweet_comment_params)
    #下記２つの省略型
    #comment = PostComment.new(post_comment_params)
    #comment.user_id = current_user.id
    comment.tweet_id = tweet.id
    comment.save
    redirect_to tweet_path(tweet)
  end
  
  def destroy
    TweetComment.find(params[:id]).destroy
    redirect_to tweet_path(params[:tweet_id])
  end

  private

  def tweet_comment_params
    params.require(:tweet_comment).permit(:comment)
  end

end
