class AddOrderStatusToTransaction < ActiveRecord::Migration[6.0]
  def change
    add_reference :transactions, :order_status, foreign_key: true
  end
end
