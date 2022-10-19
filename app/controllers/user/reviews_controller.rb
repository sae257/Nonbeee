class User::ReviewsController < ApplicationController
  def create
    bar = Bar.find(params[:bar_id])
    review = current_user.reviews.new(review_params)
    #下記２つの省略型
    #comment = PostComment.new(post_comment_params)
    #comment.user_id = current_user.id
    review.bar_id = bar.id
    review.save
    redirect_to bar_path(bar)
  end

  def destroy
    Review.find(params[:id]).destroy
    redirect_to bar_path(params[:bar_id])
  end

  private

  def review_params
    params.require(:review).permit(:post, :star)
  end

end
