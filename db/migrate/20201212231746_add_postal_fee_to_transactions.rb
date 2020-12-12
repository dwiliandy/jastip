class AddPostalFeeToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_reference :transactions, :postal_fee, foreign_key: true
  end
end
