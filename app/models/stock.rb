class Stock < ApplicationRecord

#アソシエーション
  belongs_to :user
  belongs_to :article

  def stock_user(user_id)
    stocks.find_by(user_id: user_id)
  end

end
