class Like < ApplicationRecord
#アソシエーション
  belongs_to :user
# likecountの実装
  belongs_to :article, counter_cache: :likes_count
  validates :user_id, presence: true
  validates :article_id, presence: true
  validates_uniqueness_of :article_id, scope: :user_id
end
