class AddIndexToStocks < ActiveRecord::Migration[5.2]
  def change
    add_index :stocks, [:user_id, :article_id], :unique => true
  end
end
