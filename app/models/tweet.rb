class Tweet < ApplicationRecord

belongs_to :bar
belongs_to :genre
has_many :tweet_comments, dependent: :destroy
has_many :favorites, dependent: :destroy


 def favorited_by?(user)
    favorites.exists?(user_id: user.id)
 end

 def self.looks(word)
  if word == ""
   @tweet = Tweet.all
  else
   @tweet = Tweet.where("title LIKE?","%#{word}%")
  end
 end
end
#投稿内容も入れる