class AddOwnCodeToHardwares < ActiveRecord::Migration[5.1]
  def change
    add_column :hardwares, :own_code, :string
  end
end
