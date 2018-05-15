class AddBuyDateToHardwares < ActiveRecord::Migration[5.1]
  def change
    add_column :hardwares, :buy_date, :datetime
  end
end
