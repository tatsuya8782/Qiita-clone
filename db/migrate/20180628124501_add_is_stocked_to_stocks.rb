class AddIsStockedToStocks < ActiveRecord::Migration[5.2]
  def change
    add_column :stocks, :is_stocked, :integer
  end
end
