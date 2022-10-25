class Genre < ApplicationRecord
  has_many :tweets, dependent: :destroy
end
