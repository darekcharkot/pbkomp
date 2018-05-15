class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :hardwares, :buyed, :sold
  end
end
