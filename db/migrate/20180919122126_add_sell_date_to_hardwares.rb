class AddSellDateToHardwares < ActiveRecord::Migration[5.1]
  def change
  	add_column :hardwares, :sell_date, :datetime
  end
end
