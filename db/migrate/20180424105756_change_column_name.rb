class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :hardwares, :type, :name
  end
end
