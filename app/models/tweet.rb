class Tweet < ApplicationRecord

belongs_to :bar
has_many :tweet_comments, dependent: :destroy
has_many :favorites, dependent: :destroy

 def favorited_by?(user)
    favorites.exists?(user_id: user.id)
 end
 
 def self.looks(search, word)
    if search == "perfect_match"
      @tweet = Tweet.where("title LIKE?","#{word}")
    elsif search == "forward_match"
      @tweet = Tweet.where("title LIKE?","#{word}")
    elsif search == "backward_match"
      @tweet = Tweet.where("title LIKE?","#{word}")
    elsif search == "partial_match"
      @tweet = Tweet.where("title LIKE?","#{word}")
    else
      @tweet = Tweet.all
    end
 end
end
#投稿内容も入れる