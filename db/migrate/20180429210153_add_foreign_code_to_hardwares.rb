class AddForeignCodeToHardwares < ActiveRecord::Migration[5.1]
  def change
    add_column :hardwares, :foreign_code, :string
  end
end
