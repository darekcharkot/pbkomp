class CreateHardwares < ActiveRecord::Migration[5.1]
  def change
    create_table :hardwares do |t|
      t.string :type
      t.string :model
      t.string :sn
      t.text :describe

      t.timestamps
    end
  end
end
