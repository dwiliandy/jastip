class AddTransactionsToCart < ActiveRecord::Migration[6.0]
  def change
    add_reference :carts, :transaction, null: false, foreign_key: true
  end
end
