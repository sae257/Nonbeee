class Tweet < ApplicationRecord

belongs_to :bar
has_many :tweet_comments, dependent: :destroy
has_many :favorites, dependent: :destroy

 def favorited_by?(user)
    favorites.exists?(user_id: user.id)
 end
end
