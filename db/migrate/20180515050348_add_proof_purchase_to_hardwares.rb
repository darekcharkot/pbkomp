class AddProofPurchaseToHardwares < ActiveRecord::Migration[5.1]
  def change
    add_column :hardwares, :proof, :string
  end
end
