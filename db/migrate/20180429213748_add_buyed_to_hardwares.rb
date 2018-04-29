class AddBuyedToHardwares < ActiveRecord::Migration[5.1]
  def change
    add_column :hardwares, :buyed, :string
  end
end
