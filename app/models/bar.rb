class Bar < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweets, dependent: :destroy
  has_many :reviews, dependent: :destroy

def self.looks(word)
  # ヒントとしてはスペースを除外したい or スペースのみってのを検知する
 if word == "" # 実はスペースだけのケースがあり得る....
    @bars = Bar.all
 else
    @bars = Bar.where("bar_name LIKE?","%#{word}%")
 end
end
end
