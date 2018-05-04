class AddDetailsToHardwares < ActiveRecord::Migration[5.1]
  def change
    add_column :hardwares, :processor, :string
    add_column :hardwares, :ram, :string
    add_column :hardwares, :disk, :string
    add_column :hardwares, :screen, :string
    add_column :hardwares, :dvd, :string
    add_column :hardwares, :video_card, :string
    add_column :hardwares, :battery, :string
    add_column :hardwares, :operating_system, :string
    add_column :hardwares, :warranty, :string
  end
end
