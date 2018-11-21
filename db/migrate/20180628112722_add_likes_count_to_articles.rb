class AddLikesCountToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :likes_count, :integer, :unique => true
  end
end
