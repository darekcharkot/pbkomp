class AddBuyBruttoToHardwares < ActiveRecord::Migration[5.1]
  def change
    add_column :hardwares, :buy_brutto, :string
  end
end
