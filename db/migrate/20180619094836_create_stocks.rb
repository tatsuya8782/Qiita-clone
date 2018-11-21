class CreateStocks < ActiveRecord::Migration[4.2][5.2]
  def change
    create_table :stocks do |t|
      t.references :article, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
