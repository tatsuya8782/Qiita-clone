class CreateComments < ActiveRecord::Migration[4.2][4.2][5.2]
  def change
    create_table :comments do |t|
      t.text :message, null: false
      t.references :user, null: false, foreign_key: true
      t.references :article, null: false, foreign_key: true
      t.timestamps
    end
  end
end
