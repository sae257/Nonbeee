class Bar < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :tweets, dependent: :destroy
  has_many :reviews, dependent: :destroy
  
  def self.looks(search, word)
    if search == "perfect_match"
      @bar = Bar.where("bar_name LIKE?", "#{word}")
    elsif search == "forward_match"
      @bar = Bar.where("bar_name LIKE?","#{word}%")
    elsif search == "backward_match"
      @bar = Bar.where("bar_name LIKE?","%#{word}")
    elsif search == "partial_match"
      @bar = Bar.where("bar_name LIKE?","%#{word}%")
    else
      @bar = Bar.all
    end
  end
end
