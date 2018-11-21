class Article < ApplicationRecord
  has_many :stocks, dependent: :destroy
  has_many :users, through: :stocks
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
  belongs_to :user
  has_many :comments

  acts_as_taggable
  acts_as_taggable_on :articles

# いいね機能実装のための記述
  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end

  def stock_user(user_id)
    stocks.find_by(user_id: user_id)
  end

end
