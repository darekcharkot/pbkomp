class AddPriceToHardwares < ActiveRecord::Migration[5.1]
  def change
    add_column :hardwares, :price, :string
  end
end
