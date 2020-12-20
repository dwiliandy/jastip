# == Schema Information
#
# Table name: carts
#
#  id             :bigint           not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  product_id     :bigint           not null
#  transaction_id :bigint           not null
#
# Indexes
#
#  index_carts_on_product_id      (product_id)
#  index_carts_on_transaction_id  (transaction_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#  fk_rails_...  (transaction_id => transactions.id)
#
class Cart < ApplicationRecord
  belongs_to :product
  belongs_to :transaction
end
