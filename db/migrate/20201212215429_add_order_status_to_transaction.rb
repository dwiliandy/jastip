class AddOrderStatusToTransaction < ActiveRecord::Migration[6.0]
  def change
    add_reference :transactions, :orderstatus, null: false, foreign_key: true
  end
end
