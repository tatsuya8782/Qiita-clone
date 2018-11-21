class AddDetailsToUsers < ActiveRecord::Migration[4.2][4.2][5.2]
  def change
    add_column :users, :avatar, :string
    add_column :users, :url, :string
    add_column :users, :content, :text
  end
end
